import 'dart:async';

import 'messages.dart';
import 'sound_bank.dart';


/// Abstract tone generator — a MIDI-message-driven audio engine.
///
/// Usage:
/// ```dart
/// final tg = ToneGeneratorFactory.create();
/// await tg.loadBank(0, StockBanks.piano());
/// await tg.init();
///
/// tg.send(NoteOn(0, 60, 80));     // middle C, moderate velocity
/// tg.send(NoteOff(0, 60));
///
/// // or subscribe to a stream
/// final sub = tg.subscribe(midiStream);
/// // ...
/// sub.cancel();
/// await tg.dispose();
/// ```
abstract class ToneGenerator {
  Future<void> init();

  Future<void> dispose();

  /// When true, [send] silently drops NoteOn messages and stops all voices.
  bool get muted;

  set muted(bool value);

  /// Load a [SoundBank] for MIDI program [program] (0 = default).
  /// Safe to call before [init].
  Future<void> loadBank(int program, SoundBank bank);

  /// Dispatch one MIDI message synchronously.
  void send(MidiMessage message);

  /// Wire the generator to a [Stream<MidiMessage>].
  /// Returns the [StreamSubscription] so the caller can cancel.
  StreamSubscription<MidiMessage> subscribe(Stream<MidiMessage> stream);
}
