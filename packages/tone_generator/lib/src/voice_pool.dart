enum VoiceState { idle, playing, releasing }

/// One slot in the polyphony pool — tracks which note/channel it is playing.
class Voice {
  final int index; // index into the backend's player list
  int? note;
  int? channel;
  DateTime? _startTime;
  VoiceState state = VoiceState.idle;

  /// Incremented every time the voice is acquired; the release loop captures
  /// its value at start and bails out if it changes, cancelling the fade.
  int _generation = 0;
  int get generation => _generation;

  Voice(this.index);

  bool get isIdle => state == VoiceState.idle;
  bool get isReleasing => state == VoiceState.releasing;
  DateTime get startTime =>
      _startTime ?? DateTime.fromMillisecondsSinceEpoch(0);

  void acquire(int note, int channel) {
    _generation++; // cancels any in-flight release loop for this voice
    this.note = note;
    this.channel = channel;
    _startTime = DateTime.now();
    state = VoiceState.playing;
  }

  void startRelease() {
    state = VoiceState.releasing;
  }

  /// Bumps the generation to abort any in-flight fade loop without
  /// changing note/channel. Called by stopAll before an immediate stop().
  void cancelRelease() => _generation++;

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

  /// Grab a free voice, or steal the oldest releasing voice, or finally the
  /// oldest playing voice.
  Voice acquireFor(int note, int channel) {
    final idle = _voices.where((v) => v.isIdle).firstOrNull;
    final voice = idle ?? _stealOldest(channel);
    voice.acquire(note, channel);
    return voice;
  }

  /// Find the voice currently associated with [note] on [channel], if any.
  /// Matches both playing and releasing states.
  Voice? find(int note, int channel) =>
      _voices.where((v) => v.note == note && v.channel == channel).firstOrNull;

  /// All non-idle voices, optionally filtered to [channel] (null = all).
  Iterable<Voice> activeIn(int? channel) => channel == null
      ? _voices.where((v) => !v.isIdle)
      : _voices.where((v) => !v.isIdle && v.channel == channel);

  void releaseAll(int? channel) {
    for (final v in activeIn(channel).toList()) {
      v.release();
    }
  }

  /// Steal the oldest voice. Prefers releasing voices (already fading out)
  /// over playing ones to avoid cutting off audible notes.
  Voice _stealOldest(int preferredChannel) {
    // 1. releasing, same channel
    // 2. releasing, any channel
    // 3. playing, same channel
    // 4. playing, any channel
    for (final filter in [
      (Voice v) => v.isReleasing && v.channel == preferredChannel,
      (Voice v) => v.isReleasing,
      (Voice v) => !v.isIdle && v.channel == preferredChannel,
      (Voice v) => !v.isIdle,
    ]) {
      final candidates = _voices.where(filter);
      if (candidates.isNotEmpty) {
        return candidates.reduce(
          (a, b) => a.startTime.isBefore(b.startTime) ? a : b,
        );
      }
    }
    // unreachable if pool is non-empty
    return _voices.first;
  }
}
