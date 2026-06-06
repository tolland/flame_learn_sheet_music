import 'backends/audioplayers_backend.dart';
import 'tone_generator.dart';

/// Creates the best available [ToneGenerator] for the current platform.
///
/// Currently always returns [AudioplayersBackend]. Once [SoundpoolBackend]
/// is implemented it will be preferred on Android/iOS for lower latency.
class ToneGeneratorFactory {
  ToneGeneratorFactory._();

  static ToneGenerator create({int polyphony = 16}) =>
      AudioplayersBackend(polyphony: polyphony);
}
