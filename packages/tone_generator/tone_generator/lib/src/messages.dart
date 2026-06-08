/// MIDI message value types.
///
/// Covers the subset of MIDI 1.0 needed for a polyphonic tone generator:
/// note on/off, program change, control change, and an all-notes-off panic.
sealed class MidiMessage {
  const MidiMessage();
}

/// 0x9n — start sounding a note. velocity 0 is treated as NoteOff per MIDI spec.
final class NoteOn extends MidiMessage {
  final int channel;   // 0–15
  final int note;      // 0–127 (MIDI note number)
  final int velocity;  // 0–127

  const NoteOn(this.channel, this.note, this.velocity)
      : assert(channel >= 0 && channel <= 15),
        assert(note >= 0 && note <= 127),
        assert(velocity >= 0 && velocity <= 127);

  @override
  String toString() => 'NoteOn(ch:$channel n:$note v:$velocity)';
}

/// 0x8n — stop sounding a note.
final class NoteOff extends MidiMessage {
  final int channel;
  final int note;

  const NoteOff(this.channel, this.note)
      : assert(channel >= 0 && channel <= 15),
        assert(note >= 0 && note <= 127);

  @override
  String toString() => 'NoteOff(ch:$channel n:$note)';
}

/// Silence all active voices, optionally on a single channel.
/// Equivalent to CC 123 (All Notes Off) in MIDI.
final class AllNotesOff extends MidiMessage {
  final int? channel; // null = all channels
  const AllNotesOff([this.channel]);
}

/// 0xCn — select which SoundBank (program/instrument) plays on a channel.
final class ProgramChange extends MidiMessage {
  final int channel;
  final int program; // 0–127

  const ProgramChange(this.channel, this.program)
      : assert(channel >= 0 && channel <= 15),
        assert(program >= 0 && program <= 127);
}

/// 0xBn — continuous controller. Common controllers:
///   CC 7  = channel volume (0–127)
///   CC 64 = sustain pedal (≥64 = on)
final class ControlChange extends MidiMessage {
  final int channel;
  final int controller;
  final int value;

  const ControlChange(this.channel, this.controller, this.value)
      : assert(channel >= 0 && channel <= 15),
        assert(controller >= 0 && controller <= 127),
        assert(value >= 0 && value <= 127);
}
