import 'package:flutter/services.dart';

abstract class KeyboardLayout {
  int rowCount = 5;
  int colCount = 15;
}

class KeyboardLayoutRow {
  final List<KeyboardLayoutKey> keys;

  KeyboardLayoutRow({required this.keys});
}

class KeyboardLayoutKey {
  final double relativeWidth;
  final String label;
  final PhysicalKeyboardKey physKey;
  final double startPos;

  KeyboardLayoutKey({
    required this.relativeWidth,
    required this.startPos,
    required this.label,
    required this.physKey,
  });
}

class UkKeyboardLayout extends KeyboardLayout {
  @override
  int rowCount = 5;
  @override
  int colCount = 15;

  static UkKeyboardLayout instance = UkKeyboardLayout();

  List<KeyboardLayoutRow> get rows => [
        KeyboardLayoutRow(
          keys: [
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 0,
              label: '`',
              physKey: PhysicalKeyboardKey.backquote,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 1,
              label: '1',
              physKey: PhysicalKeyboardKey.digit1,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 2,
              label: '2',
              physKey: PhysicalKeyboardKey.digit2,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              label: '3',
              startPos: 3,
              physKey: PhysicalKeyboardKey.digit3,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 4,
              label: '4',
              physKey: PhysicalKeyboardKey.digit4,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 5,
              label: '5',
              physKey: PhysicalKeyboardKey.digit5,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 6,
              label: '6',
              physKey: PhysicalKeyboardKey.digit6,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 7,
              label: '7',
              physKey: PhysicalKeyboardKey.digit7,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 8,
              label: '8',
              physKey: PhysicalKeyboardKey.digit8,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 9,
              label: '9',
              physKey: PhysicalKeyboardKey.digit9,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 10,
              label: '0',
              physKey: PhysicalKeyboardKey.digit0,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 11,
              label: '-',
              physKey: PhysicalKeyboardKey.minus,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 12,
              label: '=',
              physKey: PhysicalKeyboardKey.equal,
            ),
            KeyboardLayoutKey(
              relativeWidth: 2,
              startPos: 13,
              label: 'Backspace',
              physKey: PhysicalKeyboardKey.backspace,
            ),
          ],
        ),
        KeyboardLayoutRow(
          keys: [
            KeyboardLayoutKey(
              relativeWidth: 1.5,
              startPos: 0,
              label: 'Tab',
              physKey: PhysicalKeyboardKey.tab,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 1.5,
              label: 'q',
              physKey: PhysicalKeyboardKey.keyQ,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 2.5,
              label: 'w',
              physKey: PhysicalKeyboardKey.keyW,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 3.5,
              label: 'e',
              physKey: PhysicalKeyboardKey.keyE,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 4.5,
              label: 'r',
              physKey: PhysicalKeyboardKey.keyR,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 5.5,
              label: 't',
              physKey: PhysicalKeyboardKey.keyT,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 6.5,
              label: 'y',
              physKey: PhysicalKeyboardKey.keyY,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 7.5,
              label: 'u',
              physKey: PhysicalKeyboardKey.keyU,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 8.5,
              label: 'i',
              physKey: PhysicalKeyboardKey.keyI,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 9.5,
              label: 'o',
              physKey: PhysicalKeyboardKey.keyO,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 10.5,
              label: 'p',
              physKey: PhysicalKeyboardKey.keyP,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 11.5,
              label: '[',
              physKey: PhysicalKeyboardKey.bracketLeft,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 12.5,
              label: ']',
              physKey: PhysicalKeyboardKey.bracketRight,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1.5,
              startPos: 13.5,
              label: 'enter',
              physKey: PhysicalKeyboardKey.enter,
            ),
          ],
        ),
        KeyboardLayoutRow(
          keys: [
            KeyboardLayoutKey(
              relativeWidth: 1.9,
              startPos: 0,
              label: 'Caps',
              physKey: PhysicalKeyboardKey.capsLock,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 1.9,
              label: 'a',
              physKey: PhysicalKeyboardKey.keyA,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 2.9,
              label: 's',
              physKey: PhysicalKeyboardKey.keyS,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 3.9,
              label: 'd',
              physKey: PhysicalKeyboardKey.keyD,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 4.9,
              label: 'f',
              physKey: PhysicalKeyboardKey.keyF,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 5.9,
              label: 'g',
              physKey: PhysicalKeyboardKey.keyG,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 6.9,
              label: 'h',
              physKey: PhysicalKeyboardKey.keyH,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 7.9,
              label: 'j',
              physKey: PhysicalKeyboardKey.keyJ,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 8.9,
              label: 'k',
              physKey: PhysicalKeyboardKey.keyK,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 9.9,
              label: 'l',
              physKey: PhysicalKeyboardKey.keyL,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 10.9,
              label: ';',
              physKey: PhysicalKeyboardKey.semicolon,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 11.9,
              label: "'",
              physKey: PhysicalKeyboardKey.quote,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1,
              startPos: 12.9,
              label: '#',
              physKey: PhysicalKeyboardKey.backslash,
            ),
            KeyboardLayoutKey(
              relativeWidth: 1.1,
              startPos: 13.9,
              label: 'Enter',
              physKey: PhysicalKeyboardKey.enter,
            ),
          ],
        ),
        KeyboardLayoutRow(keys: [
          KeyboardLayoutKey(
            relativeWidth: 1.3,
            startPos: 0,
            label: 'Shift',
            physKey: PhysicalKeyboardKey.shiftLeft,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1,
            startPos: 1.3,
            label: '\\',
            physKey: PhysicalKeyboardKey.intlBackslash,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1,
            startPos: 2.3,
            label: 'z',
            physKey: PhysicalKeyboardKey.keyZ,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1,
            startPos: 3.3,
            label: 'x',
            physKey: PhysicalKeyboardKey.keyX,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1,
            startPos: 4.3,
            label: 'c',
            physKey: PhysicalKeyboardKey.keyC,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1,
            startPos: 5.3,
            label: 'v',
            physKey: PhysicalKeyboardKey.keyV,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1,
            startPos: 6.3,
            label: 'b',
            physKey: PhysicalKeyboardKey.keyB,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1,
            startPos: 7.3,
            label: 'n',
            physKey: PhysicalKeyboardKey.keyN,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1,
            startPos: 8.3,
            label: 'm',
            physKey: PhysicalKeyboardKey.keyM,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1,
            startPos: 9.3,
            label: ',',
            physKey: PhysicalKeyboardKey.comma,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1,
            startPos: 10.3,
            label: '.',
            physKey: PhysicalKeyboardKey.period,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1,
            startPos: 11.3,
            label: '/',
            physKey: PhysicalKeyboardKey.slash,
          ),
          KeyboardLayoutKey(
            relativeWidth: 2.7,
            startPos: 12.3,
            label: 'Shift',
            physKey: PhysicalKeyboardKey.shiftRight,
          ),
        ]),
        KeyboardLayoutRow(keys: [
          KeyboardLayoutKey(
            relativeWidth: 1.3,
            startPos: 0,
            label: 'Ctrl',
            physKey: PhysicalKeyboardKey.controlLeft,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1.3,
            startPos: 1.3,
            label: 'Super',
            physKey: PhysicalKeyboardKey.metaLeft,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1.3,
            startPos: 2.6,
            label: 'Alt',
            physKey: PhysicalKeyboardKey.altLeft,
          ),
          KeyboardLayoutKey(
            relativeWidth: 5.9,
            startPos: 3.9,
            label: 'Space',
            physKey: PhysicalKeyboardKey.space,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1.3,
            startPos: 9.8,
            label: 'GrAlt',
            physKey: PhysicalKeyboardKey.altRight,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1.3,
            startPos: 11.1,
            label: 'Fn',
            physKey: PhysicalKeyboardKey.fn,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1.3,
            startPos: 12.4,
            label: 'Menu',
            physKey: PhysicalKeyboardKey.contextMenu,
          ),
          KeyboardLayoutKey(
            relativeWidth: 1.3,
            startPos: 13.7,
            label: 'Ctrl',
            physKey: PhysicalKeyboardKey.controlRight,
          ),
          // KeyboardLayoutKey(
          //   relativeWidth: 5.2,
          //   startPos: 7.2,
          //   label: 'Ctrl',
          //   physKey: PhysicalKeyboardKey.controlRight,
          // ),
        ]),
      ];
}
