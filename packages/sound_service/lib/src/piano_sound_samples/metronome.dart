import '../models/instrument.dart';

class MetronomePitch {
  final int pitch;
  final String path;

  const MetronomePitch({
    required this.pitch,
    required this.path,
  });
}

/// @TODO(tolland) implement some interface/superclass for instruments
class MetronomeInstrument {
  /// The name of the instrument, e.g. "Piano"
  /// must not be null and should be unique
  static const String name = "Metronome";

  static const String basePath = "packages/sound_service/assets/sfx";

  static const Map<int, MetronomePitch> pitches = {
    50: MetronomePitch(
      pitch: 50,
      path: "metronome-85688.mp3",
    ),
    51: MetronomePitch(
      pitch: 51,
      path: "drumsticks-pro-mark-la-special-2bn-hickory-no4-103712.mp3",
    ),
    52: MetronomePitch(
      pitch: 52,
      path: "548519__ludwigmueller__perc_metronomequartz_lo.mp3",
    ),
  };
}
