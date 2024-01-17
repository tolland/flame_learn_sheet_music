import 'package:flutter/material.dart';

enum MusicQwikCategory {
  clef,
  time,
  key,
  spacer,
  note,
  rest,
}

enum MusiQwik {
  // clefs
  trebleClef('=&=', category: MusicQwikCategory.clef),
  bassClef('=\u00af=', category: MusicQwikCategory.clef),
  // time signatures
  commonTime('0=', category: MusicQwikCategory.time),
  twoTwoTime('1=', category: MusicQwikCategory.time),
  twoFourTime('2=', category: MusicQwikCategory.time),
  threeFourTime('3=', category: MusicQwikCategory.time),
  fourFourTime('4=', category: MusicQwikCategory.time),
  threeTwoTime('5=', category: MusicQwikCategory.time),
  sixEightTime('6=', category: MusicQwikCategory.time),
  cutTime('7=', category: MusicQwikCategory.time),
  // Keys
  keyG('\u00A1', category: MusicQwikCategory.key),
  keyD('\u00A2', category: MusicQwikCategory.key),
  keyA('\u00A3', category: MusicQwikCategory.key),
  keyE('\u00A4', category: MusicQwikCategory.key),
  keyB('\u00A5', category: MusicQwikCategory.key),
  keyFSharp('\u00A6', category: MusicQwikCategory.key),
  // spacers/markers/delimiters
  spacer('='),
  barStart("'"),
  barEnd('!'),
  // Rests
  wholeRest('=<='),
  halfRest('=;='),
  qrtRest('=:='),
  eigRest('=9='),
  sxtRest('=8='),
  // quarter notes in treble clef
  trA2qrt('P'),
  trB2qrt('Q'),
  trC4qrt('R'),
  trD4qrt('S'),
  trE4qrt('T'),
  trF4qrt('U'),
  trG4qrt('V'),
  trA4qrt('W'),
  trB4qrt('X'),
  trC5qrt('Y'),
  trD5qrt('Z'),
  trE5qrt('['),
  trF5qrt('\\'),
  trG5qrt(']'),
  trA5qrt('^'),
  // eighth notes in treble clef
  trC2eig('@'),
  trD2eig('A'),
  trE2eig('B'),
  trF2eig('C'),
  trG2eig('D'),
  trA2eig('E'),
  trB2eig('F'),
  trC3eig('G'),
  trD3eig('H'),
  trE3eig('I'),
  trF3eig('J'),
  trG3eig('K'),
  trA3eig('L'),
  trB3eig('M'),
  trC4eig('N'),
  // something wrong with the base of the font of these 2
  // trD4eig('\u201e'),
  // trE4eig('\u2026'),

  // sixteenth notes in treble clef
  trA2sxt('@', fontWeight: FontWeight.bold),
  trB2sxt('A', fontWeight: FontWeight.bold),
  // flat symbols in treble clef
  trAFlat2('\u00e0'),
  trBFlat2qrt('\u00e1Q'),
  trBSharp2qrt('\u00d1Q'),
  trCFlat4qrt('\u00e2R'),
  trCSharp4qrt('\u00d2R'),
  trDFlat4qrt('\u00e3S='),
  trDSharp4qrt('\u00d3S='),
  trCSharp5qrt('\u00d2Y='),


  // notes in bass clef
  baC2qrt('=P='),
  baCSharp2qrt('\u00d0P='),
  baD2qrt('=Q='),
  baDSharp2qrt('\u00d2Q='),
  baE2qrt('=R='),
  baF2qrt('=S='),
  baFSharp2qrt('\u00d2S='),
  baG2qrt('=T='),
  baGSharp2qrt('\u00d2T='),
  baA2qrt('=U='),
  ;

  /// The default font size for the [MusiQwik] font.
  static const double _fontSize = 65;

  /// return the item as a string
  final String chars;

  /// quavers/eighth notes are in the bold version of the font
  final FontWeight fontWeight;
  final MusicQwikCategory category;

  const MusiQwik(
    this.chars, {
    this.fontWeight = FontWeight.normal,
    this.category = MusicQwikCategory.note,
  });

  TextSpan span([double fontSize = _fontSize]) {
    return TextSpan(
      text: chars,
      style: TextStyle(
        fontFamily: 'MusiQwik',
        package: 'musiqwik_font',
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
