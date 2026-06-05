// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/bloc/key_listener_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KeyListenerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RawKeyDownEvent event) keyDown,
    required TResult Function(RawKeyUpEvent event) keyUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RawKeyDownEvent event)? keyDown,
    TResult? Function(RawKeyUpEvent event)? keyUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RawKeyDownEvent event)? keyDown,
    TResult Function(RawKeyUpEvent event)? keyUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KeyListenerStarted value) started,
    required TResult Function(_KeyDownEvent value) keyDown,
    required TResult Function(_KeyUpEvent value) keyUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KeyListenerStarted value)? started,
    TResult? Function(_KeyDownEvent value)? keyDown,
    TResult? Function(_KeyUpEvent value)? keyUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KeyListenerStarted value)? started,
    TResult Function(_KeyDownEvent value)? keyDown,
    TResult Function(_KeyUpEvent value)? keyUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyListenerEventCopyWith<$Res> {
  factory $KeyListenerEventCopyWith(
          KeyListenerEvent value, $Res Function(KeyListenerEvent) then) =
      _$KeyListenerEventCopyWithImpl<$Res, KeyListenerEvent>;
}

/// @nodoc
class _$KeyListenerEventCopyWithImpl<$Res, $Val extends KeyListenerEvent>
    implements $KeyListenerEventCopyWith<$Res> {
  _$KeyListenerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$KeyListenerStartedImplCopyWith<$Res> {
  factory _$$KeyListenerStartedImplCopyWith(_$KeyListenerStartedImpl value,
          $Res Function(_$KeyListenerStartedImpl) then) =
      __$$KeyListenerStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KeyListenerStartedImplCopyWithImpl<$Res>
    extends _$KeyListenerEventCopyWithImpl<$Res, _$KeyListenerStartedImpl>
    implements _$$KeyListenerStartedImplCopyWith<$Res> {
  __$$KeyListenerStartedImplCopyWithImpl(_$KeyListenerStartedImpl _value,
      $Res Function(_$KeyListenerStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KeyListenerStartedImpl implements _KeyListenerStarted {
  const _$KeyListenerStartedImpl();

  @override
  String toString() {
    return 'KeyListenerEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KeyListenerStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RawKeyDownEvent event) keyDown,
    required TResult Function(RawKeyUpEvent event) keyUp,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RawKeyDownEvent event)? keyDown,
    TResult? Function(RawKeyUpEvent event)? keyUp,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RawKeyDownEvent event)? keyDown,
    TResult Function(RawKeyUpEvent event)? keyUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KeyListenerStarted value) started,
    required TResult Function(_KeyDownEvent value) keyDown,
    required TResult Function(_KeyUpEvent value) keyUp,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KeyListenerStarted value)? started,
    TResult? Function(_KeyDownEvent value)? keyDown,
    TResult? Function(_KeyUpEvent value)? keyUp,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KeyListenerStarted value)? started,
    TResult Function(_KeyDownEvent value)? keyDown,
    TResult Function(_KeyUpEvent value)? keyUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _KeyListenerStarted implements KeyListenerEvent {
  const factory _KeyListenerStarted() = _$KeyListenerStartedImpl;
}

/// @nodoc
abstract class _$$KeyDownEventImplCopyWith<$Res> {
  factory _$$KeyDownEventImplCopyWith(
          _$KeyDownEventImpl value, $Res Function(_$KeyDownEventImpl) then) =
      __$$KeyDownEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RawKeyDownEvent event});
}

/// @nodoc
class __$$KeyDownEventImplCopyWithImpl<$Res>
    extends _$KeyListenerEventCopyWithImpl<$Res, _$KeyDownEventImpl>
    implements _$$KeyDownEventImplCopyWith<$Res> {
  __$$KeyDownEventImplCopyWithImpl(
      _$KeyDownEventImpl _value, $Res Function(_$KeyDownEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$KeyDownEventImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as RawKeyDownEvent,
    ));
  }
}

/// @nodoc

class _$KeyDownEventImpl implements _KeyDownEvent {
  const _$KeyDownEventImpl({required this.event});

  @override
  final RawKeyDownEvent event;

  @override
  String toString() {
    return 'KeyListenerEvent.keyDown(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyDownEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyDownEventImplCopyWith<_$KeyDownEventImpl> get copyWith =>
      __$$KeyDownEventImplCopyWithImpl<_$KeyDownEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RawKeyDownEvent event) keyDown,
    required TResult Function(RawKeyUpEvent event) keyUp,
  }) {
    return keyDown(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RawKeyDownEvent event)? keyDown,
    TResult? Function(RawKeyUpEvent event)? keyUp,
  }) {
    return keyDown?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RawKeyDownEvent event)? keyDown,
    TResult Function(RawKeyUpEvent event)? keyUp,
    required TResult orElse(),
  }) {
    if (keyDown != null) {
      return keyDown(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KeyListenerStarted value) started,
    required TResult Function(_KeyDownEvent value) keyDown,
    required TResult Function(_KeyUpEvent value) keyUp,
  }) {
    return keyDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KeyListenerStarted value)? started,
    TResult? Function(_KeyDownEvent value)? keyDown,
    TResult? Function(_KeyUpEvent value)? keyUp,
  }) {
    return keyDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KeyListenerStarted value)? started,
    TResult Function(_KeyDownEvent value)? keyDown,
    TResult Function(_KeyUpEvent value)? keyUp,
    required TResult orElse(),
  }) {
    if (keyDown != null) {
      return keyDown(this);
    }
    return orElse();
  }
}

abstract class _KeyDownEvent implements KeyListenerEvent {
  const factory _KeyDownEvent({required final RawKeyDownEvent event}) =
      _$KeyDownEventImpl;

  RawKeyDownEvent get event;
  @JsonKey(ignore: true)
  _$$KeyDownEventImplCopyWith<_$KeyDownEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KeyUpEventImplCopyWith<$Res> {
  factory _$$KeyUpEventImplCopyWith(
          _$KeyUpEventImpl value, $Res Function(_$KeyUpEventImpl) then) =
      __$$KeyUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RawKeyUpEvent event});
}

/// @nodoc
class __$$KeyUpEventImplCopyWithImpl<$Res>
    extends _$KeyListenerEventCopyWithImpl<$Res, _$KeyUpEventImpl>
    implements _$$KeyUpEventImplCopyWith<$Res> {
  __$$KeyUpEventImplCopyWithImpl(
      _$KeyUpEventImpl _value, $Res Function(_$KeyUpEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$KeyUpEventImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as RawKeyUpEvent,
    ));
  }
}

/// @nodoc

class _$KeyUpEventImpl implements _KeyUpEvent {
  const _$KeyUpEventImpl({required this.event});

  @override
  final RawKeyUpEvent event;

  @override
  String toString() {
    return 'KeyListenerEvent.keyUp(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyUpEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyUpEventImplCopyWith<_$KeyUpEventImpl> get copyWith =>
      __$$KeyUpEventImplCopyWithImpl<_$KeyUpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RawKeyDownEvent event) keyDown,
    required TResult Function(RawKeyUpEvent event) keyUp,
  }) {
    return keyUp(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RawKeyDownEvent event)? keyDown,
    TResult? Function(RawKeyUpEvent event)? keyUp,
  }) {
    return keyUp?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RawKeyDownEvent event)? keyDown,
    TResult Function(RawKeyUpEvent event)? keyUp,
    required TResult orElse(),
  }) {
    if (keyUp != null) {
      return keyUp(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KeyListenerStarted value) started,
    required TResult Function(_KeyDownEvent value) keyDown,
    required TResult Function(_KeyUpEvent value) keyUp,
  }) {
    return keyUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KeyListenerStarted value)? started,
    TResult? Function(_KeyDownEvent value)? keyDown,
    TResult? Function(_KeyUpEvent value)? keyUp,
  }) {
    return keyUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KeyListenerStarted value)? started,
    TResult Function(_KeyDownEvent value)? keyDown,
    TResult Function(_KeyUpEvent value)? keyUp,
    required TResult orElse(),
  }) {
    if (keyUp != null) {
      return keyUp(this);
    }
    return orElse();
  }
}

abstract class _KeyUpEvent implements KeyListenerEvent {
  const factory _KeyUpEvent({required final RawKeyUpEvent event}) =
      _$KeyUpEventImpl;

  RawKeyUpEvent get event;
  @JsonKey(ignore: true)
  _$$KeyUpEventImplCopyWith<_$KeyUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KeyListenerState {
  /// The keyDown event keys.
  Set<LogicalKeyboardKey> get keysDownLogical =>
      throw _privateConstructorUsedError;
  Set<PhysicalKeyboardKey> get keysDownPhysical =>
      throw _privateConstructorUsedError;

  /// The keyUp event keys.
  Set<LogicalKeyboardKey> get keysUpLogical =>
      throw _privateConstructorUsedError;
  Set<PhysicalKeyboardKey> get keysUpPhysical =>
      throw _privateConstructorUsedError;

  /// Keys that are held down through keyDown and keyUp events.
  Set<LogicalKeyboardKey> get keysPressed => throw _privateConstructorUsedError;
  Set<PhysicalKeyboardKey> get physicalKeysPressed =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KeyListenerStateCopyWith<KeyListenerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyListenerStateCopyWith<$Res> {
  factory $KeyListenerStateCopyWith(
          KeyListenerState value, $Res Function(KeyListenerState) then) =
      _$KeyListenerStateCopyWithImpl<$Res, KeyListenerState>;
  @useResult
  $Res call(
      {Set<LogicalKeyboardKey> keysDownLogical,
      Set<PhysicalKeyboardKey> keysDownPhysical,
      Set<LogicalKeyboardKey> keysUpLogical,
      Set<PhysicalKeyboardKey> keysUpPhysical,
      Set<LogicalKeyboardKey> keysPressed,
      Set<PhysicalKeyboardKey> physicalKeysPressed});
}

/// @nodoc
class _$KeyListenerStateCopyWithImpl<$Res, $Val extends KeyListenerState>
    implements $KeyListenerStateCopyWith<$Res> {
  _$KeyListenerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keysDownLogical = null,
    Object? keysDownPhysical = null,
    Object? keysUpLogical = null,
    Object? keysUpPhysical = null,
    Object? keysPressed = null,
    Object? physicalKeysPressed = null,
  }) {
    return _then(_value.copyWith(
      keysDownLogical: null == keysDownLogical
          ? _value.keysDownLogical
          : keysDownLogical // ignore: cast_nullable_to_non_nullable
              as Set<LogicalKeyboardKey>,
      keysDownPhysical: null == keysDownPhysical
          ? _value.keysDownPhysical
          : keysDownPhysical // ignore: cast_nullable_to_non_nullable
              as Set<PhysicalKeyboardKey>,
      keysUpLogical: null == keysUpLogical
          ? _value.keysUpLogical
          : keysUpLogical // ignore: cast_nullable_to_non_nullable
              as Set<LogicalKeyboardKey>,
      keysUpPhysical: null == keysUpPhysical
          ? _value.keysUpPhysical
          : keysUpPhysical // ignore: cast_nullable_to_non_nullable
              as Set<PhysicalKeyboardKey>,
      keysPressed: null == keysPressed
          ? _value.keysPressed
          : keysPressed // ignore: cast_nullable_to_non_nullable
              as Set<LogicalKeyboardKey>,
      physicalKeysPressed: null == physicalKeysPressed
          ? _value.physicalKeysPressed
          : physicalKeysPressed // ignore: cast_nullable_to_non_nullable
              as Set<PhysicalKeyboardKey>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyListenerStateInitialImplCopyWith<$Res>
    implements $KeyListenerStateCopyWith<$Res> {
  factory _$$KeyListenerStateInitialImplCopyWith(
          _$KeyListenerStateInitialImpl value,
          $Res Function(_$KeyListenerStateInitialImpl) then) =
      __$$KeyListenerStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Set<LogicalKeyboardKey> keysDownLogical,
      Set<PhysicalKeyboardKey> keysDownPhysical,
      Set<LogicalKeyboardKey> keysUpLogical,
      Set<PhysicalKeyboardKey> keysUpPhysical,
      Set<LogicalKeyboardKey> keysPressed,
      Set<PhysicalKeyboardKey> physicalKeysPressed});
}

/// @nodoc
class __$$KeyListenerStateInitialImplCopyWithImpl<$Res>
    extends _$KeyListenerStateCopyWithImpl<$Res, _$KeyListenerStateInitialImpl>
    implements _$$KeyListenerStateInitialImplCopyWith<$Res> {
  __$$KeyListenerStateInitialImplCopyWithImpl(
      _$KeyListenerStateInitialImpl _value,
      $Res Function(_$KeyListenerStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keysDownLogical = null,
    Object? keysDownPhysical = null,
    Object? keysUpLogical = null,
    Object? keysUpPhysical = null,
    Object? keysPressed = null,
    Object? physicalKeysPressed = null,
  }) {
    return _then(_$KeyListenerStateInitialImpl(
      keysDownLogical: null == keysDownLogical
          ? _value._keysDownLogical
          : keysDownLogical // ignore: cast_nullable_to_non_nullable
              as Set<LogicalKeyboardKey>,
      keysDownPhysical: null == keysDownPhysical
          ? _value._keysDownPhysical
          : keysDownPhysical // ignore: cast_nullable_to_non_nullable
              as Set<PhysicalKeyboardKey>,
      keysUpLogical: null == keysUpLogical
          ? _value._keysUpLogical
          : keysUpLogical // ignore: cast_nullable_to_non_nullable
              as Set<LogicalKeyboardKey>,
      keysUpPhysical: null == keysUpPhysical
          ? _value._keysUpPhysical
          : keysUpPhysical // ignore: cast_nullable_to_non_nullable
              as Set<PhysicalKeyboardKey>,
      keysPressed: null == keysPressed
          ? _value._keysPressed
          : keysPressed // ignore: cast_nullable_to_non_nullable
              as Set<LogicalKeyboardKey>,
      physicalKeysPressed: null == physicalKeysPressed
          ? _value._physicalKeysPressed
          : physicalKeysPressed // ignore: cast_nullable_to_non_nullable
              as Set<PhysicalKeyboardKey>,
    ));
  }
}

/// @nodoc

class _$KeyListenerStateInitialImpl implements KeyListenerStateInitial {
  const _$KeyListenerStateInitialImpl(
      {final Set<LogicalKeyboardKey> keysDownLogical = const {},
      final Set<PhysicalKeyboardKey> keysDownPhysical = const {},
      final Set<LogicalKeyboardKey> keysUpLogical = const {},
      final Set<PhysicalKeyboardKey> keysUpPhysical = const {},
      final Set<LogicalKeyboardKey> keysPressed = const {},
      final Set<PhysicalKeyboardKey> physicalKeysPressed = const {}})
      : _keysDownLogical = keysDownLogical,
        _keysDownPhysical = keysDownPhysical,
        _keysUpLogical = keysUpLogical,
        _keysUpPhysical = keysUpPhysical,
        _keysPressed = keysPressed,
        _physicalKeysPressed = physicalKeysPressed;

  /// The keyDown event keys.
  final Set<LogicalKeyboardKey> _keysDownLogical;

  /// The keyDown event keys.
  @override
  @JsonKey()
  Set<LogicalKeyboardKey> get keysDownLogical {
    if (_keysDownLogical is EqualUnmodifiableSetView) return _keysDownLogical;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_keysDownLogical);
  }

  final Set<PhysicalKeyboardKey> _keysDownPhysical;
  @override
  @JsonKey()
  Set<PhysicalKeyboardKey> get keysDownPhysical {
    if (_keysDownPhysical is EqualUnmodifiableSetView) return _keysDownPhysical;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_keysDownPhysical);
  }

  /// The keyUp event keys.
  final Set<LogicalKeyboardKey> _keysUpLogical;

  /// The keyUp event keys.
  @override
  @JsonKey()
  Set<LogicalKeyboardKey> get keysUpLogical {
    if (_keysUpLogical is EqualUnmodifiableSetView) return _keysUpLogical;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_keysUpLogical);
  }

  final Set<PhysicalKeyboardKey> _keysUpPhysical;
  @override
  @JsonKey()
  Set<PhysicalKeyboardKey> get keysUpPhysical {
    if (_keysUpPhysical is EqualUnmodifiableSetView) return _keysUpPhysical;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_keysUpPhysical);
  }

  /// Keys that are held down through keyDown and keyUp events.
  final Set<LogicalKeyboardKey> _keysPressed;

  /// Keys that are held down through keyDown and keyUp events.
  @override
  @JsonKey()
  Set<LogicalKeyboardKey> get keysPressed {
    if (_keysPressed is EqualUnmodifiableSetView) return _keysPressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_keysPressed);
  }

  final Set<PhysicalKeyboardKey> _physicalKeysPressed;
  @override
  @JsonKey()
  Set<PhysicalKeyboardKey> get physicalKeysPressed {
    if (_physicalKeysPressed is EqualUnmodifiableSetView)
      return _physicalKeysPressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_physicalKeysPressed);
  }

  @override
  String toString() {
    return 'KeyListenerState(keysDownLogical: $keysDownLogical, keysDownPhysical: $keysDownPhysical, keysUpLogical: $keysUpLogical, keysUpPhysical: $keysUpPhysical, keysPressed: $keysPressed, physicalKeysPressed: $physicalKeysPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyListenerStateInitialImpl &&
            const DeepCollectionEquality()
                .equals(other._keysDownLogical, _keysDownLogical) &&
            const DeepCollectionEquality()
                .equals(other._keysDownPhysical, _keysDownPhysical) &&
            const DeepCollectionEquality()
                .equals(other._keysUpLogical, _keysUpLogical) &&
            const DeepCollectionEquality()
                .equals(other._keysUpPhysical, _keysUpPhysical) &&
            const DeepCollectionEquality()
                .equals(other._keysPressed, _keysPressed) &&
            const DeepCollectionEquality()
                .equals(other._physicalKeysPressed, _physicalKeysPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_keysDownLogical),
      const DeepCollectionEquality().hash(_keysDownPhysical),
      const DeepCollectionEquality().hash(_keysUpLogical),
      const DeepCollectionEquality().hash(_keysUpPhysical),
      const DeepCollectionEquality().hash(_keysPressed),
      const DeepCollectionEquality().hash(_physicalKeysPressed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyListenerStateInitialImplCopyWith<_$KeyListenerStateInitialImpl>
      get copyWith => __$$KeyListenerStateInitialImplCopyWithImpl<
          _$KeyListenerStateInitialImpl>(this, _$identity);
}

abstract class KeyListenerStateInitial implements KeyListenerState {
  const factory KeyListenerStateInitial(
          {final Set<LogicalKeyboardKey> keysDownLogical,
          final Set<PhysicalKeyboardKey> keysDownPhysical,
          final Set<LogicalKeyboardKey> keysUpLogical,
          final Set<PhysicalKeyboardKey> keysUpPhysical,
          final Set<LogicalKeyboardKey> keysPressed,
          final Set<PhysicalKeyboardKey> physicalKeysPressed}) =
      _$KeyListenerStateInitialImpl;

  @override

  /// The keyDown event keys.
  Set<LogicalKeyboardKey> get keysDownLogical;
  @override
  Set<PhysicalKeyboardKey> get keysDownPhysical;
  @override

  /// The keyUp event keys.
  Set<LogicalKeyboardKey> get keysUpLogical;
  @override
  Set<PhysicalKeyboardKey> get keysUpPhysical;
  @override

  /// Keys that are held down through keyDown and keyUp events.
  Set<LogicalKeyboardKey> get keysPressed;
  @override
  Set<PhysicalKeyboardKey> get physicalKeysPressed;
  @override
  @JsonKey(ignore: true)
  _$$KeyListenerStateInitialImplCopyWith<_$KeyListenerStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
