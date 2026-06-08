import 'dart:async';

import '../../tone_generator.dart';

/// Soundpool backend placeholder — lower latency on Android/iOS.
///
/// Not yet implemented. [AudioplayersBackend] is used on all platforms
/// until this is built out.
class SoundpoolBackend extends ToneGenerator {
  @override
  Future<void> init() => throw UnimplementedError('SoundpoolBackend');

  @override
  Future<void> dispose() async {}

  @override
  bool get muted => false;

  @override
  set muted(bool value) {}

  @override
  Future<void> loadBank(int program, SoundBank bank) async {}

  @override
  void send(MidiMessage message) {}

  @override
  StreamSubscription<MidiMessage> subscribe(Stream<MidiMessage> stream) =>
      stream.listen((_) {});
}
