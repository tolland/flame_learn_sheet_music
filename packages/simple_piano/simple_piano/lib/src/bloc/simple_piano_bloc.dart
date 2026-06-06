import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';

part '../../generated/src/bloc/simple_piano_bloc.freezed.dart';
part 'simple_piano_event.dart';
part 'simple_piano_state.dart';

/// This is the bloc for the simple piano. It is responsible for
/// handling the gesture events directly on the widget.
class SimplePianoBloc extends Bloc<SimplePianoEvent, SimplePianoState> {
  static final _log = Logger('SimplePianoBloc');

  SimplePianoBloc() : super(SimplePianoState()) {
    on<SimplePianoEvent>(
      (events, emit) async {
        await events.map(
          pitchFromExternal: (event) async => await _pitchFromExternal(
            event,
            emit,
          ),
          keyPanStart: (event) async => await _keyPanStart(event, emit),
          keyPanEnd: (event) async => await _keyPanEnd(event, emit),
          keyPanCancel: (event) async => await _keyPanCancel(event, emit),
          keyMouseEnter: (event) async => await _keyMouseEnter(event, emit),
          keyMouseExit: (event) async => await _keyMouseExit(event, emit),
          pianoEnter: (event) async => await _pianoEnter(event, emit),
          pianoExit: (event) async => await _pianoExit(event, emit),
        );
      },
      transformer: sequential(),
    );
  }

  _pitchFromExternal(
    SimplePianoPitchFromExternal event,
    Emitter<SimplePianoState> emit,
  ) {
    _log.fine(() => "in pitchFromExternal in bloc handler ${event.pitches}");
    //_log.fine("templist: $templist");
    emit(
      state.copyWith(
        syntheticNotes: {...event.pitches},
        notesOn: {},
        notesOff: {},
      ),
    );
  }

  _keyMouseEnter(
    SimplePianoKeyMouseEnter event,
    Emitter<SimplePianoState> emit,
  ) {

    emit(
      state.copyWith(
        pressedKeys: state.isKeyDown
            ? {...state.pressedKeys, event.number}
            : state.pressedKeys,
        isKeyDown: state.isKeyDown,
        notesOn: state.isKeyDown ? {event.number} : {},
        hovered: state.isKeyDown ? {} : {event.number},
        notesOff: {},
      ),
    );

    //   _log.finest("SimplePianoKeyMouseEnter(${event.number}) after isPlaying: ${state.isPlaying}");
  }

  /// this seems to be the only way to detect a slide. i.e. keeping track
  /// of whether the mouse is in contact with the screen
  _keyMouseExit(
    SimplePianoKeyMouseExit event,
    Emitter<SimplePianoState> emit,
  ) {
    _log.finer(() =>
        "_keyMouseExit ${event.number} before isPlaying: ${state.isKeyDown}");

    //{...originalSet}..remove(itemToRemove);

    emit(
      state.copyWith(
        hovered: state.isKeyDown ? {} : {...state.hovered}..remove(event.number),
        isKeyDown: state.isKeyDown,
        notesOff: state.isKeyDown ? {event.number} : {},
        notesOn: {},
        pressedKeys: state.isKeyDown
            ? ({...state.pressedKeys}..remove(event.number))
            : state.pressedKeys,
      ),
    );
    //   _log.finest("SimplePianoKeyMouseExit(${event.number}) after isPlaying: ${state.isPlaying}");
  }

  /// it seems like a keyPanStart must come from pressed state false
  /// and no other keys pressed, but a click then drag causes a tap and then
  /// a pan start so we need to handle that case
  _keyPanStart(SimplePianoKeyPanStart event, Emitter<SimplePianoState> emit) {
    _log.finer(() => "in keyPress in bloc handler");

    assert(state.isKeyDown == false);

    emit(
      state.copyWith(
        pressedKeys: {...state.pressedKeys, event.number},
        isKeyDown: true,
        notesOn: {event.number},
        notesOff: {},
        hovered: {},
      ),
    );

    // if (state.debugTransitions) {
    //   assert(templist
    //           .map((e) => e == SimplePianoKeyStatus.hover)
    //           .toList()
    //           .length ==
    //       state.pressedKeys
    //           .map((e) => e == SimplePianoKeyStatus.hover)
    //           .toList()
    //           .length);
    //   assert(templist
    //           .map((e) => e == SimplePianoKeyStatus.pressed)
    //           .toList()
    //           .length ==
    //       state.pressedKeys
    //           .map((e) => e == SimplePianoKeyStatus.pressed)
    //           .toList()
    //           .length);
    // }
//    _log.fine("SimplePianoKeyPanStart(${event.number}) after isPlaying: ${state.isPlaying}");
  }

  /// pan end seems to be triggered on the starting note
  _keyPanEnd(SimplePianoKeyPanEnd event, Emitter<SimplePianoState> emit) {
    _log.finer(() =>
        "SimplePianoKeyPanEnd(${event.number}) before isPlaying: ${state.isKeyDown}");

    /// we should only get a pan end if we are in the piano
    assert(state.isKeyDown == true);

    /// ideally I would like to just cancel the keys associated
    /// with the pan, to support future multi touch, but this
    /// doesn't seem to be easy. Will have to track the keys
    /// that are pressed by the drag itself and unpress them
    /// manually

    emit(
      state.copyWith(
        pressedKeys: {},
        isKeyDown: false,
        notesOn: {},
        notesOff: {...state.pressedKeys},
      ),
    );

    // if (state.debugTransitions) {
    //   assert(templist
    //           .map((e) => e == SimplePianoKeyStatus.hover)
    //           .toList()
    //           .length ==
    //       state.pressedKeys
    //           .map((e) => e == SimplePianoKeyStatus.hover)
    //           .toList()
    //           .length);
    //   assert(templist
    //           .map((e) => e == SimplePianoKeyStatus.pressed)
    //           .toList()
    //           .length ==
    //       state.pressedKeys
    //           .map((e) => e == SimplePianoKeyStatus.pressed)
    //           .toList()
    //           .length);
    // }
    //  _log.fine(() => "SimplePianoKeyPanEnd(${event.number}) after isPlaying: ${state.isPlaying}");
  }

  _keyPanCancel(SimplePianoKeyPanCancel event, Emitter<SimplePianoState> emit) {
    _log.finer(() =>
        "SimplePianoKey PanCancel((${event.number})) before ${state.isKeyDown}");
    // List<SimplePianoKeyStatus> templist = List.from(state.pressedKeys);
    // templist[event.number] = SimplePianoKeyStatus.none;
    // bool isPlaying = templist.contains(SimplePianoKeyStatus.pressed);
    //print("SimplePianoEventReleased in simplepianobloc isPlaying: $isPlaying");
    emit(
      state.copyWith(
        pressedKeys: {...state.pressedKeys}..remove(event.number),
        isKeyDown: false,
        notesOn: {},
        notesOff: {event.number},
      ),
    );
    //  _log.fine(() => "SimplePianoKeyTapCancel((${event.number})) after ${state.isPlaying}");
  }

  _pianoEnter(SimplePianoMouseEnter event, Emitter<SimplePianoState> emit) {
    // _log.fine(() => "SimplePianoMouseEnter (entered piano container)");
  }

  _pianoExit(SimplePianoMouseExit event, Emitter<SimplePianoState> emit) {
    _log.fine(() => "SimplePianoMouseExit isPlaying: ${state.isKeyDown}");
    emit(
      //SimplePianoState.empty(),
      state.copyWith(
        pressedKeys: const {},
        isKeyDown: state.isKeyDown,
        notesOn: {},
        notesOff: {...state.pressedKeys},
      ),
    );

    _log.fine("SimplePianoMouseExit state: $state");
  }
}
