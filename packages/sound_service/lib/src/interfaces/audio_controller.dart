abstract class IAudioController {

  Future<void> playNote({
    required int pitch,
    required int velocity,
    required int channel,
  }) async {}

  void stopNote(
    int number,
    int channel,
  ) {}

  dispose() {}

  init() {}
}
