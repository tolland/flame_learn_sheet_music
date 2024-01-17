
/// https://www.w3.org/2021/06/musicxml40/musicxml-reference/elements/root-step/
/// This is referred to as the step in the MusicXML documentation.
/// however NoteSeq is using step to refer to the quantized step.
/// wikipedia seems to have Pitch Class as the most common name for this concept. - https://en.wikipedia.org/wiki/Pitch_class
/// In music, a pitch class (p.c. or pc) is a set of all pitches that are a whole number of octaves apart; for example, the pitch class C consists of the Cs in all octaves.
enum PitchClass {
  C,
  D,
  E,
  F,
  G,
  A,
  B,
  undefined,
}
