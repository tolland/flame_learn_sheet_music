part of 'simple_piano_bloc.dart';

class SimplePianoState extends Equatable {
  /// this is the list of keys that are currently pressed
  /// by the user. (as opposed to external notes just represented
  final Set<int> pressedKeys;

  /// track notes that are being played externally separately
  /// so they don't interfere with the internal state
  final Set<int> syntheticNotes;
  final Set<int> notesOn;
  final Set<int> notesOff;

  /// track notes that are currently hovered over
  final Set<int> hovered;

  /// tracking if the user is currently pressing a key, used for
  /// transitioning between events on different keys
  final bool isKeyDown;

  /// do a load of expensive checking that things match up
  final bool debugTransitions;

  SimplePianoState({
    this.debugTransitions = false,
    this.hovered = const {},
    this.isKeyDown = false,
    this.notesOff = const {},
    this.notesOn = const {},
    this.pressedKeys = const {},
    this.syntheticNotes = const {},
  });

  SimplePianoState copyWith({
    Set<int>? hovered,
    Set<int>? notesOff,
    Set<int>? notesOn,
    Set<int>? pressedKeys,
    Set<int>? syntheticNotes,
    bool? debugTransitions,
    bool? isKeyDown,
  }) {
    return SimplePianoState(
      debugTransitions: debugTransitions ?? this.debugTransitions,
      hovered: hovered ?? this.hovered,
      isKeyDown: isKeyDown ?? this.isKeyDown,
      notesOff: notesOff ?? this.notesOff,
      notesOn: notesOn ?? this.notesOn,
      pressedKeys: pressedKeys ?? this.pressedKeys,
      syntheticNotes: syntheticNotes ?? this.syntheticNotes,
    );
  }

  @override
  List<Object> get props => [
        isKeyDown,
        notesOff,
        notesOn,
        pressedKeys,
        syntheticNotes,
        hovered,
      ];

  @override
  String toString() {
    return 'state{(${pressedKeys.length}/${syntheticNotes.length}/${pressedKeys.length}), notesOn: $notesOn, notesOff: $notesOff, syntheticNotes: $syntheticNotes, hovered: $hovered isPlaying: $isKeyDown}';
  }
}
