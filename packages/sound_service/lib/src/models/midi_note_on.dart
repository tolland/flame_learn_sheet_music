
/// This class represents a MIDI pitch.
class MidiNoteOn {
  final int channel;
  final int number;
  final int velocity;

  const MidiNoteOn({
    required this.channel,
    required this.number,
    required this.velocity,
  });
}
