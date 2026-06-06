enum VoiceState { idle, playing }

/// One slot in the polyphony pool — tracks which note/channel it is playing.
class Voice {
  final int index; // index into the backend's player list
  int? note;
  int? channel;
  DateTime? _startTime;
  VoiceState state = VoiceState.idle;

  Voice(this.index);

  bool get isIdle => state == VoiceState.idle;
  DateTime get startTime =>
      _startTime ?? DateTime.fromMillisecondsSinceEpoch(0);

  void acquire(int note, int channel) {
    this.note = note;
    this.channel = channel;
    _startTime = DateTime.now();
    state = VoiceState.playing;
  }

  void release() {
    note = null;
    channel = null;
    _startTime = null;
    state = VoiceState.idle;
  }

  @override
  String toString() => 'Voice($index, n:$note ch:$channel $state)';
}

/// Fixed-size pool of [Voice]s with oldest-first voice stealing.
class VoicePool {
  final int size;
  final List<Voice> _voices;

  VoicePool(this.size) : _voices = List.generate(size, Voice.new);

  /// Grab a free voice, or steal the oldest one when all are busy.
  Voice acquireFor(int note, int channel) {
    final voice = _voices.where((v) => v.isIdle).firstOrNull ??
        _stealOldest(channel);
    voice.acquire(note, channel);
    return voice;
  }

  /// Find the voice currently playing [note] on [channel], if any.
  Voice? find(int note, int channel) =>
      _voices.where((v) => v.note == note && v.channel == channel).firstOrNull;

  /// All active voices, optionally filtered to [channel] (null = all).
  Iterable<Voice> activeIn(int? channel) => channel == null
      ? _voices.where((v) => !v.isIdle)
      : _voices.where((v) => !v.isIdle && v.channel == channel);

  void releaseAll(int? channel) {
    for (final v in activeIn(channel).toList()) {
      v.release();
    }
  }

  /// Steal oldest active voice, preferring same channel to minimise
  /// audible interruption.
  Voice _stealOldest(int preferredChannel) {
    final sameChannel =
        _voices.where((v) => !v.isIdle && v.channel == preferredChannel);
    final candidates = sameChannel.isNotEmpty ? sameChannel : _voices.where((v) => !v.isIdle);
    return candidates.reduce(
      (a, b) => a.startTime.isBefore(b.startTime) ? a : b,
    );
  }
}
