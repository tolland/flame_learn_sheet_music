import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import '../bloc/key_listener_bloc.dart';

class KeyboardListenerWidget extends StatefulWidget {
  static final _log = Logger('KeyboardListenerWidget');
  final Widget child;

  const KeyboardListenerWidget({
    required this.child,
    super.key,
  });

  @override
  State<KeyboardListenerWidget> createState() => _KeyboardListenerWidgetState();
}

class _KeyboardListenerWidgetState extends State<KeyboardListenerWidget> {
  static final _log = Logger('_KeyboardListenerWidgetState');
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: _focusNode,
      onKey: (event) {
        if (event is RawKeyDownEvent && !event.repeat) {
          //print("event is ${event.isShiftPressed}");
          BlocProvider.of<KeyListenerBloc>(context)
              .add(KeyListenerEvent.keyDown(event: event));
        } else if (event is RawKeyUpEvent) {
          BlocProvider.of<KeyListenerBloc>(context)
              .add(KeyListenerEvent.keyUp(event: event));
        }
      },
      child: widget.child,
    );
  }
}
