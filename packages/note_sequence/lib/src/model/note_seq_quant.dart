
class NoteSeqQuant {
  final int midiPitch;
  //final int velocity;
  final int startStep;
  final int endStep;

  NoteSeqQuant({
    required this.midiPitch,
  //  required this.velocity,
    required this.startStep,
    required this.endStep,
  });

  @override
  String toString() {
    return 'NoteSeqQuant(midiPitch:$midiPitch, startStep: $startStep,endStep: $endStep,)';
  }
}
