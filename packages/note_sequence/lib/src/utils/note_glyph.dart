enum NoteGlyph {
  trebleClef(text: "==&="),
  bassClef(text: "==\u00af="),
  c4(text: "==R=="),
  cSharp4(text: "==\u00d2R=");

  final String text;

  const NoteGlyph({
    required this.text,
  });
}
