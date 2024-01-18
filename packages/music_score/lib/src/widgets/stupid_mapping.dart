import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:musiqwik_font/musiqwik_font.dart';

import 'package:note_sequence/note_sequence.dart';

class Mapping {
  static doRecog() {
    TapGestureRecognizer recognizer = new TapGestureRecognizer();
    recognizer.onTap = () => print('Tap Here onTap');
    return recognizer;
  }

  static getRichText(TextSpan textSpan) {
    return RichText(
      text: TextSpan(
        children: [
          MusiQwik.spacer.span(
              // recognizer: doRecog(),
              // onEnter: (event) {
              //   print("enterered spacer span $event");
              // },
              ),
          textSpan,
          MusiQwik.spacer.span(),
        ],
        // onEnter: (event) {
        //   print("enterered text span $event");
        // },
        // recognizer: new TapGestureRecognizer()
        //   ..onTap = () => print('Tap Here onTap'),
      ),
    );
  }

  void test1() {
    print(MusiQwik.values);
    print(MusiQwik.values.length);
    print(MusiQwik.values[0]);
    print(MusiQwik.values[0].name);
    print(MusiQwik.values[0].chars);
    print(MusiQwik.values[0].span());
  }

  static RichText getMappedText(Note note) {
    switch (note.type) {
      case NoteDuration.eighth:
        switch (note.staff.clef) {
          case Clef.bass:
            switch (note.pitch.spn) {
              case 'C2':
                return getRichText(MusiQwik.baC2eig.span());
              case 'D2':
                return getRichText(MusiQwik.baD2eig.span());
              case 'E2':
                return getRichText(MusiQwik.baE2eig.span());
              case 'F2':
                return getRichText(MusiQwik.baF2eig.span());
              case 'G2':
                return getRichText(MusiQwik.baG2eig.span());
              case 'A2':
                return getRichText(MusiQwik.baA2eig.span());
              case 'B2':
                return getRichText(MusiQwik.baB2eig.span());
              case 'C3':
                return getRichText(MusiQwik.baC3eig.span());

              default:
                throw Exception(
                    'Note not mapped: ${note.pitch.spn} in ${note.staff.clef}');
            }
          default:
            throw Exception('Clef not mapped: ${note.staff.clef}');
        }

      case NoteDuration.quarter:
        switch (note.staff.clef) {
          case Clef.treble:
            switch (note.pitch.spn) {
              case 'C4':
                return getRichText(MusiQwik.trC4qrt.span());
              case 'D4':
                return getRichText(MusiQwik.trD4qrt.span());
              case 'E4':
                return getRichText(MusiQwik.trE4qrt.span());
              case 'F4':
                return getRichText(MusiQwik.trF4qrt.span());
              case 'G4':
                return getRichText(MusiQwik.trG4qrt.span());
              case 'A4':
                return getRichText(MusiQwik.trA4qrt.span());
              case 'B4':
                return getRichText(MusiQwik.trB4qrt.span());
              case 'C5':
                return getRichText(MusiQwik.trC5qrt.span());
              default:
                throw Exception(
                    'Note not mapped: ${note.pitch.spn} in ${note.staff.clef}');
            }
          case Clef.bass:
            switch (note.pitch.spn) {
              case 'rest':
                return getRichText(MusiQwik.qrtRest.span());
              case 'C2':
                return getRichText(MusiQwik.baC2qrt.span());
              case 'D2':
                return getRichText(MusiQwik.baD2qrt.span());
              case 'E2':
                return getRichText(MusiQwik.baE2qrt.span());
              case 'F2':
                return getRichText(MusiQwik.baF2qrt.span());
              case 'G2':
                return getRichText(MusiQwik.baG2qrt.span());
              case 'A2':
                return getRichText(MusiQwik.baA2qrt.span());
              default:
                throw Exception(
                    'Note not mapped: ${note.pitch.spn} in ${note.staff.clef}');
            }
          default:
            throw Exception('Clef not mapped: ${note.staff.clef}');
        }
      default:
        throw Exception('Note type not mapped: ${note.type}');
    }
  }
}
