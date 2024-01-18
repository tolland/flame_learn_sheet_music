# MusiQwik font package

[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)


A flutter package redistributing the MusiQwik font.

The MusiQwik font is a music notation font that was created by Robert Allgeyer
around 2001. This package redistributes the font under the conditions of the
SIL Open Font License, with some added convenience utilities to simplify its 
use in flutter.

The font is good for creating simple music notation such as scales and
rhythms. However, as a font it lacks features creating complex music 
notation such as chords and beamed notes. 

## Glyphs

![Using utility TextSpans](https://github.com/tolland/flame_learn_sheet_music/raw/main/packages/musiqwik_font/doc/img/readme-04.png)

## Getting started

install the package

```shell
flutter pub add musiqwik_font
```

To use the font directly in a TextStyle, you can do the following:

```dart
Text(
  '=&=4Y=!==Y==Y==%F=G=X=!=%I=H=W===>V==:==.',
  style: TextStyle(
    fontFamily: 'MusiQwik',
    package: 'musiqwik_font',
    fontSize: 48,
  ),
),
```

produces:

![Plain Text widget](https://github.com/tolland/flame_learn_sheet_music/raw/main/packages/musiqwik_font/doc/img/readme-01.png)

Additionally, you can use the `MusiQwik` static span() to return any named item
as a TextSpan. This is useful if you want to use the font in a RichText widget.

```dart
RichText(
  text: TextSpan(
    children: [
      MusiQwik.barStart,
      MusiQwik.trebleClef,
      MusiQwik.keyD,
      MusiQwik.fourFourTime,
      MusiQwik.spacer,
      MusiQwik.trD4qrt,
      MusiQwik.spacer,
      MusiQwik.spacer,
      MusiQwik.trE4qrt,
      MusiQwik.spacer,
      MusiQwik.spacer,
      MusiQwik.trF4qrt,
      MusiQwik.spacer,
      MusiQwik.spacer,
      MusiQwik.trG4qrt,
      MusiQwik.spacer,
      MusiQwik.barEnd,
    ].map((obj) => obj.span()).toList(),
  ),
)
```

![Using utility TextSpans](https://github.com/tolland/flame_learn_sheet_music/raw/main/packages/musiqwik_font/doc/img/readme-02.png)

use a custom font size;

```dart
return RichText(
  text: TextSpan(
      children: [
        MusiQwik.barStart,
        MusiQwik.trebleClef,
        MusiQwik.keyD,
        MusiQwik.fourFourTime,
        MusiQwik.spacer,
        MusiQwik.trD4qrt,
        MusiQwik.spacer,
        MusiQwik.spacer,
        MusiQwik.trE4qrt,
        MusiQwik.spacer,
        MusiQwik.spacer,
        MusiQwik.trF4qrt,
        MusiQwik.spacer,
        MusiQwik.spacer,
        MusiQwik.trG4qrt,
        MusiQwik.spacer,
        MusiQwik.barEnd,
      ].map((obj) => obj.span(customFontSize)).toList(),
  ),
);
```

![override font size](https://github.com/tolland/flame_learn_sheet_music/raw/main/packages/musiqwik_font/doc/img/readme-03.png)


### conventions for static names

The names for the clefs and keys should be self-explanatory. The names for the
notes are as follows:
  * **trE4qrt**: treble E 4th Octave quarter note
  * **trCSharp4qrt**: treble C# 4th Octave quarter note
  * **baC4hlf**: bass C 4th Octave half note

The full list of convenience names for the glyphs can be found here:

<https://pub.dev/documentation/musiqwik_font/latest/musiqwik_font/MusiQwik.html>



## License

The source code for the package is licensed under the [MIT License](./LICENSE).

### Asset Licenses

The package includes the [MusiQwik] font, which is distributed under the Open Font License (OFL). You can use, study, modify, and redistribute the font under the conditions of the OFL. For the complete terms and conditions, see the [OFL License Text](./LICENSE_OFL.txt).
