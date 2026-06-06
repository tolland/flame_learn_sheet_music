/// tone_generator — stream-based MIDI tone generator for Flutter.
///
/// Typical setup:
/// ```dart
/// import 'package:tone_generator/tone_generator.dart';
///
/// final tg = ToneGeneratorFactory.create(polyphony: 16);
/// await tg.loadBank(0, StockBanks.piano());
/// await tg.init();
///
/// // fire-and-forget
/// tg.send(NoteOn(0, 60, 80));
/// tg.send(NoteOff(0, 60));
///
/// // stream-driven (MIDI file player, keyboard, metronome, …)
/// final sub = tg.subscribe(myMidiStream);
/// ```
library tone_generator;

export 'src/messages.dart';
export 'src/tone_generator.dart';
export 'src/sound_bank.dart';
export 'src/voice_pool.dart';
export 'src/platform_factory.dart';
export 'src/stock/piano_note_map.dart';
export 'src/stock/stock_banks.dart';
