
class Score {
  List<Part> parts;
  List<Measure> measures;

  Score(this.parts, this.measures);
}

class Part {
  List<Stave> staves;

  Part(this.staves);
}

class Stave {
  int staveNumber;
  Part part; // You can keep a reference back to the Part if needed

  Stave(this.staveNumber, this.part);
}

class Measure {
  int measureNumber;
  List<Note> notes;

  Measure(this.measureNumber, this.notes);

  void addNote(Note note) {
    notes.add(note);
  }

  // Get notes for a specific stave within this measure.
  List<Note> getNotesForStave(Stave stave) {
    return notes.where((note) => note.stave == stave).toList();
  }
}

class Note {
  String pitch; // Simplified, you can add more properties like duration, octave, etc.
  Stave stave;
  Measure measure;

  Note(this.pitch, this.stave, this.measure);
}

void main() {
  // Example of creating a score with parts, staves, measures, and notes.
  var part1 = Part([]);
  var stave1 = Stave(1, part1);
  part1.staves.add(stave1);

  var measure1 = Measure(1, []);
  var measure2 = Measure(2, []);

  var score = Score([part1], [measure1, measure2]);

  var note1 = Note('C4', stave1, measure1);
  var note2 = Note('E4', stave1, measure1);

  measure1.addNote(note1);
  measure1.addNote(note2);

  print('Score has ${score.parts.length} part(s)');
  print('Part 1 has ${part1.staves.length} stave(s)');
  print('Measure 1 has ${measure1.notes.length} note(s)');

  // Get the list of notes for the specific stave and measure.
  List<Note> notesForStaveInMeasure = measure1.getNotesForStave(stave1);

  // Print the notes.
  for (var note in notesForStaveInMeasure) {
    print('Note: ${note.pitch}, Stave: ${note.stave.staveNumber}, Measure: ${note.measure.measureNumber}');
  }
}
