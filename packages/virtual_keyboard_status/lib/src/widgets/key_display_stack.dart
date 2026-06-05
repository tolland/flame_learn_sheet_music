import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:piano_widget/piano_widget.dart';

import '../../virtual_keyboard_status.dart';
import '../data/uk_layout.dart';

class SimplePianoKeyDisplayStack extends StatelessWidget {
  static final _log = Logger('SimplePiano');

  SimplePianoKeyDisplayStack({super.key});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    _log.shout("height: $height");

    return LayoutBuilder(builder: (context, constraints) {
      _log.finest("constraints: $constraints");

      double height = constraints.maxHeight;
      double width = constraints.maxWidth;

      if(width/height > 15/5){
        width = width * ((15/5)/(width/height));
      } else {
        height = height * ((width/height)/(15/5));
      }

      print("width: $width height: $height");

      var layout = UkKeyboardLayout();

      double unitWidth = width / layout.colCount;
      // double unitHeight = height / layout.rowCount;
      double unitHeight = unitWidth;

      return Center(
        child: Stack(
            children: layout.rows.mapIndexed((rowi, row) {
          return Stack(
            children: row.keys.mapIndexed((keyi, key) {
              return Positioned(
                left: key.startPos * unitWidth,
                top: rowi * unitHeight,
                width: key.relativeWidth * unitWidth,
                height: unitHeight,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: GestureDetector(
                    onTapDown: (details) {
                      print("onTapDown");
                      BlocProvider.of<VirtualKeyboardStatusBloc>(context).add(
                        VirtualKeyboardStatusEvent.keyDown(
                          physicalKeysPressed: {key.physKey},
                          keysPressed: {},
                        ),
                      );
                    },
                    onTapUp: (details) {
                      print("onTapUp");
                      BlocProvider.of<VirtualKeyboardStatusBloc>(context).add(
                        const VirtualKeyboardStatusEvent.keyDown(
                          physicalKeysPressed: {},
                          keysPressed: {},
                        ),
                      );

                    },
                    child: BlocBuilder<VirtualKeyboardStatusBloc,
                        VirtualKeyboardStatusState>(
                      builder: (context, state) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: state.physicalKeysPressed
                                    .any((element) => element == key.physKey)
                                ? Colors.red
                                : Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              key.label,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            }).toList(),
          );
        }).toList()),
      );
    });
  }
}
