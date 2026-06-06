class StreamCache {
  final int streamId;
  final int pitch;
  final int channel;
  final int velocity;
  final int soundId;

  StreamCache({
    required this.streamId,
    required this.pitch,
    required this.channel,
    required this.velocity,
    required this.soundId,
  });

  @override
  String toString() {
    return 'StreamCache{streamId: $streamId, pitch: $pitch, channel: $channel, velocity: $velocity, soundId: $soundId}';
  }
}