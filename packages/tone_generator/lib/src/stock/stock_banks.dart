import '../sound_bank.dart';
import 'piano_note_map.dart';

/// Pre-configured [SoundBank] factories for bundled sample sets.
abstract final class StockBanks {
  static const _noteBase = 'packages/sound_service/assets/notes';

  /// Piano bank covering C2–C6 (MIDI 36–84), 49 notes.
  ///
  /// Requires the consuming app's pubspec.yaml to include:
  ///   flutter:
  ///     assets:
  ///       - packages/sound_service/assets/notes/
  static SoundBank piano() => SoundBank(
        name: 'piano-leethring',
        assetPaths: {
          for (final e in pianoNoteMap.entries)
            e.key: '$_noteBase/${e.value}.mp3',
        },
      );
}
