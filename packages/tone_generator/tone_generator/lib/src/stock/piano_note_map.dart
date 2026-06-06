/// MIDI note number → filename stem for the Leethring piano sample set.
///
/// Covers C2–C6 (MIDI 36–84), 49 notes.
/// Files live at packages/sound_service/assets/notes/<stem>.mp3
const Map<int, String> pianoNoteMap = {
  // C2 octave
  36: 'C',   37: 'Cs',  38: 'D',   39: 'Ds',  40: 'E',
  41: 'F',   42: 'Fs',  43: 'G',   44: 'Gs',  45: 'A',
  46: 'As',  47: 'B',
  // C3 octave
  48: 'cc',  49: 'ccs', 50: 'dd',  51: 'dds', 52: 'ee',
  53: 'ff',  54: 'ffs', 55: 'gg',  56: 'ggs', 57: 'aa',
  58: 'aas', 59: 'bb',
  // C4 octave (middle C = 60)
  60: 'c1',  61: 'c1s', 62: 'd1',  63: 'd1s', 64: 'e1',
  65: 'f1',  66: 'f1s', 67: 'g1',  68: 'g1s', 69: 'a1',
  70: 'a1s', 71: 'b1',
  // C5 octave
  72: 'c2',  73: 'c2s', 74: 'd2',  75: 'd2s', 76: 'e2',
  77: 'f2',  78: 'f2s', 79: 'g2',  80: 'g2s', 81: 'a2',
  82: 'a2s', 83: 'b2',
  // C6
  84: 'c3',
};
