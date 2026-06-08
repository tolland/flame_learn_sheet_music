import 'package:logging/logging.dart';

/// A set of audio samples keyed by MIDI note number.
///
/// Stores asset paths only; the consuming backend is responsible for
/// pre-warming its audio cache (e.g. AudioCache for audioplayers).
class SoundBank {
  static final _log = Logger('SoundBank');

  final String name;

  /// MIDI note → Flutter asset path
  /// e.g. 36 → 'packages/sound_service/assets/notes/C.mp3'
  final Map<int, String> _assetPaths;

  bool _preloaded = false;

  SoundBank({
    required Map<int, String> assetPaths,
    this.name = 'unnamed',
  }) : _assetPaths = Map.unmodifiable(assetPaths);

  bool get isLoaded => _preloaded;
  Iterable<int> get notes => _assetPaths.keys;

  /// Returns the asset path for [note], or null if not in this bank.
  String? pathFor(int note) => _assetPaths[note];

  /// Mark this bank as pre-loaded. Called by the backend after it has
  /// warmed its audio cache.
  void markLoaded() {
    _preloaded = true;
    _log.fine('"$name" marked loaded');
  }

  void dispose() => _preloaded = false;
}
