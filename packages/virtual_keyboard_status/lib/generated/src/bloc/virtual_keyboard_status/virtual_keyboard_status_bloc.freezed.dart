// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../src/bloc/virtual_keyboard_status/virtual_keyboard_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VirtualKeyboardStatusEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)
        keyDown,
    required TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)
        keyUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyDown,
    TResult? Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyDown,
    TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VirtualKeyboardStatusStarted value) started,
    required TResult Function(VirtualKeyboardStatusKeyDownEvent value) keyDown,
    required TResult Function(VirtualKeyboardStatusKeyUpEvent value) keyUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VirtualKeyboardStatusStarted value)? started,
    TResult? Function(VirtualKeyboardStatusKeyDownEvent value)? keyDown,
    TResult? Function(VirtualKeyboardStatusKeyUpEvent value)? keyUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VirtualKeyboardStatusStarted value)? started,
    TResult Function(VirtualKeyboardStatusKeyDownEvent value)? keyDown,
    TResult Function(VirtualKeyboardStatusKeyUpEvent value)? keyUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VirtualKeyboardStatusEventCopyWith<$Res> {
  factory $VirtualKeyboardStatusEventCopyWith(VirtualKeyboardStatusEvent value,
          $Res Function(VirtualKeyboardStatusEvent) then) =
      _$VirtualKeyboardStatusEventCopyWithImpl<$Res,
          VirtualKeyboardStatusEvent>;
}

/// @nodoc
class _$VirtualKeyboardStatusEventCopyWithImpl<$Res,
        $Val extends VirtualKeyboardStatusEvent>
    implements $VirtualKeyboardStatusEventCopyWith<$Res> {
  _$VirtualKeyboardStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VirtualKeyboardStatusStartedImplCopyWith<$Res> {
  factory _$$VirtualKeyboardStatusStartedImplCopyWith(
          _$VirtualKeyboardStatusStartedImpl value,
          $Res Function(_$VirtualKeyboardStatusStartedImpl) then) =
      __$$VirtualKeyboardStatusStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VirtualKeyboardStatusStartedImplCopyWithImpl<$Res>
    extends _$VirtualKeyboardStatusEventCopyWithImpl<$Res,
        _$VirtualKeyboardStatusStartedImpl>
    implements _$$VirtualKeyboardStatusStartedImplCopyWith<$Res> {
  __$$VirtualKeyboardStatusStartedImplCopyWithImpl(
      _$VirtualKeyboardStatusStartedImpl _value,
      $Res Function(_$VirtualKeyboardStatusStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VirtualKeyboardStatusStartedImpl
    implements VirtualKeyboardStatusStarted {
  const _$VirtualKeyboardStatusStartedImpl();

  @override
  String toString() {
    return 'VirtualKeyboardStatusEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VirtualKeyboardStatusStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)
        keyDown,
    required TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)
        keyUp,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyDown,
    TResult? Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyUp,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyDown,
    TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyUp,
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
    required TResult Function(VirtualKeyboardStatusStarted value) started,
    required TResult Function(VirtualKeyboardStatusKeyDownEvent value) keyDown,
    required TResult Function(VirtualKeyboardStatusKeyUpEvent value) keyUp,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VirtualKeyboardStatusStarted value)? started,
    TResult? Function(VirtualKeyboardStatusKeyDownEvent value)? keyDown,
    TResult? Function(VirtualKeyboardStatusKeyUpEvent value)? keyUp,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VirtualKeyboardStatusStarted value)? started,
    TResult Function(VirtualKeyboardStatusKeyDownEvent value)? keyDown,
    TResult Function(VirtualKeyboardStatusKeyUpEvent value)? keyUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class VirtualKeyboardStatusStarted
    implements VirtualKeyboardStatusEvent {
  const factory VirtualKeyboardStatusStarted() =
      _$VirtualKeyboardStatusStartedImpl;
}

/// @nodoc
abstract class _$$VirtualKeyboardStatusKeyDownEventImplCopyWith<$Res> {
  factory _$$VirtualKeyboardStatusKeyDownEventImplCopyWith(
          _$VirtualKeyboardStatusKeyDownEventImpl value,
          $Res Function(_$VirtualKeyboardStatusKeyDownEventImpl) then) =
      __$$VirtualKeyboardStatusKeyDownEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Set<LogicalKeyboardKey> keysPressed,
      Set<PhysicalKeyboardKey> physicalKeysPressed});
}

/// @nodoc
class __$$VirtualKeyboardStatusKeyDownEventImplCopyWithImpl<$Res>
    extends _$VirtualKeyboardStatusEventCopyWithImpl<$Res,
        _$VirtualKeyboardStatusKeyDownEventImpl>
    implements _$$VirtualKeyboardStatusKeyDownEventImplCopyWith<$Res> {
  __$$VirtualKeyboardStatusKeyDownEventImplCopyWithImpl(
      _$VirtualKeyboardStatusKeyDownEventImpl _value,
      $Res Function(_$VirtualKeyboardStatusKeyDownEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keysPressed = null,
    Object? physicalKeysPressed = null,
  }) {
    return _then(_$VirtualKeyboardStatusKeyDownEventImpl(
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

class _$VirtualKeyboardStatusKeyDownEventImpl
    implements VirtualKeyboardStatusKeyDownEvent {
  const _$VirtualKeyboardStatusKeyDownEventImpl(
      {required final Set<LogicalKeyboardKey> keysPressed,
      required final Set<PhysicalKeyboardKey> physicalKeysPressed})
      : _keysPressed = keysPressed,
        _physicalKeysPressed = physicalKeysPressed;

  final Set<LogicalKeyboardKey> _keysPressed;
  @override
  Set<LogicalKeyboardKey> get keysPressed {
    if (_keysPressed is EqualUnmodifiableSetView) return _keysPressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_keysPressed);
  }

  final Set<PhysicalKeyboardKey> _physicalKeysPressed;
  @override
  Set<PhysicalKeyboardKey> get physicalKeysPressed {
    if (_physicalKeysPressed is EqualUnmodifiableSetView)
      return _physicalKeysPressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_physicalKeysPressed);
  }

  @override
  String toString() {
    return 'VirtualKeyboardStatusEvent.keyDown(keysPressed: $keysPressed, physicalKeysPressed: $physicalKeysPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VirtualKeyboardStatusKeyDownEventImpl &&
            const DeepCollectionEquality()
                .equals(other._keysPressed, _keysPressed) &&
            const DeepCollectionEquality()
                .equals(other._physicalKeysPressed, _physicalKeysPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_keysPressed),
      const DeepCollectionEquality().hash(_physicalKeysPressed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VirtualKeyboardStatusKeyDownEventImplCopyWith<
          _$VirtualKeyboardStatusKeyDownEventImpl>
      get copyWith => __$$VirtualKeyboardStatusKeyDownEventImplCopyWithImpl<
          _$VirtualKeyboardStatusKeyDownEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)
        keyDown,
    required TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)
        keyUp,
  }) {
    return keyDown(keysPressed, physicalKeysPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyDown,
    TResult? Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyUp,
  }) {
    return keyDown?.call(keysPressed, physicalKeysPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyDown,
    TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyUp,
    required TResult orElse(),
  }) {
    if (keyDown != null) {
      return keyDown(keysPressed, physicalKeysPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VirtualKeyboardStatusStarted value) started,
    required TResult Function(VirtualKeyboardStatusKeyDownEvent value) keyDown,
    required TResult Function(VirtualKeyboardStatusKeyUpEvent value) keyUp,
  }) {
    return keyDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VirtualKeyboardStatusStarted value)? started,
    TResult? Function(VirtualKeyboardStatusKeyDownEvent value)? keyDown,
    TResult? Function(VirtualKeyboardStatusKeyUpEvent value)? keyUp,
  }) {
    return keyDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VirtualKeyboardStatusStarted value)? started,
    TResult Function(VirtualKeyboardStatusKeyDownEvent value)? keyDown,
    TResult Function(VirtualKeyboardStatusKeyUpEvent value)? keyUp,
    required TResult orElse(),
  }) {
    if (keyDown != null) {
      return keyDown(this);
    }
    return orElse();
  }
}

abstract class VirtualKeyboardStatusKeyDownEvent
    implements VirtualKeyboardStatusEvent {
  const factory VirtualKeyboardStatusKeyDownEvent(
          {required final Set<LogicalKeyboardKey> keysPressed,
          required final Set<PhysicalKeyboardKey> physicalKeysPressed}) =
      _$VirtualKeyboardStatusKeyDownEventImpl;

  Set<LogicalKeyboardKey> get keysPressed;
  Set<PhysicalKeyboardKey> get physicalKeysPressed;
  @JsonKey(ignore: true)
  _$$VirtualKeyboardStatusKeyDownEventImplCopyWith<
          _$VirtualKeyboardStatusKeyDownEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VirtualKeyboardStatusKeyUpEventImplCopyWith<$Res> {
  factory _$$VirtualKeyboardStatusKeyUpEventImplCopyWith(
          _$VirtualKeyboardStatusKeyUpEventImpl value,
          $Res Function(_$VirtualKeyboardStatusKeyUpEventImpl) then) =
      __$$VirtualKeyboardStatusKeyUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Set<LogicalKeyboardKey> keysPressed,
      Set<PhysicalKeyboardKey> physicalKeysPressed});
}

/// @nodoc
class __$$VirtualKeyboardStatusKeyUpEventImplCopyWithImpl<$Res>
    extends _$VirtualKeyboardStatusEventCopyWithImpl<$Res,
        _$VirtualKeyboardStatusKeyUpEventImpl>
    implements _$$VirtualKeyboardStatusKeyUpEventImplCopyWith<$Res> {
  __$$VirtualKeyboardStatusKeyUpEventImplCopyWithImpl(
      _$VirtualKeyboardStatusKeyUpEventImpl _value,
      $Res Function(_$VirtualKeyboardStatusKeyUpEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keysPressed = null,
    Object? physicalKeysPressed = null,
  }) {
    return _then(_$VirtualKeyboardStatusKeyUpEventImpl(
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

class _$VirtualKeyboardStatusKeyUpEventImpl
    implements VirtualKeyboardStatusKeyUpEvent {
  const _$VirtualKeyboardStatusKeyUpEventImpl(
      {required final Set<LogicalKeyboardKey> keysPressed,
      required final Set<PhysicalKeyboardKey> physicalKeysPressed})
      : _keysPressed = keysPressed,
        _physicalKeysPressed = physicalKeysPressed;

  final Set<LogicalKeyboardKey> _keysPressed;
  @override
  Set<LogicalKeyboardKey> get keysPressed {
    if (_keysPressed is EqualUnmodifiableSetView) return _keysPressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_keysPressed);
  }

  final Set<PhysicalKeyboardKey> _physicalKeysPressed;
  @override
  Set<PhysicalKeyboardKey> get physicalKeysPressed {
    if (_physicalKeysPressed is EqualUnmodifiableSetView)
      return _physicalKeysPressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_physicalKeysPressed);
  }

  @override
  String toString() {
    return 'VirtualKeyboardStatusEvent.keyUp(keysPressed: $keysPressed, physicalKeysPressed: $physicalKeysPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VirtualKeyboardStatusKeyUpEventImpl &&
            const DeepCollectionEquality()
                .equals(other._keysPressed, _keysPressed) &&
            const DeepCollectionEquality()
                .equals(other._physicalKeysPressed, _physicalKeysPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_keysPressed),
      const DeepCollectionEquality().hash(_physicalKeysPressed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VirtualKeyboardStatusKeyUpEventImplCopyWith<
          _$VirtualKeyboardStatusKeyUpEventImpl>
      get copyWith => __$$VirtualKeyboardStatusKeyUpEventImplCopyWithImpl<
          _$VirtualKeyboardStatusKeyUpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)
        keyDown,
    required TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)
        keyUp,
  }) {
    return keyUp(keysPressed, physicalKeysPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyDown,
    TResult? Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyUp,
  }) {
    return keyUp?.call(keysPressed, physicalKeysPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyDown,
    TResult Function(Set<LogicalKeyboardKey> keysPressed,
            Set<PhysicalKeyboardKey> physicalKeysPressed)?
        keyUp,
    required TResult orElse(),
  }) {
    if (keyUp != null) {
      return keyUp(keysPressed, physicalKeysPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VirtualKeyboardStatusStarted value) started,
    required TResult Function(VirtualKeyboardStatusKeyDownEvent value) keyDown,
    required TResult Function(VirtualKeyboardStatusKeyUpEvent value) keyUp,
  }) {
    return keyUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VirtualKeyboardStatusStarted value)? started,
    TResult? Function(VirtualKeyboardStatusKeyDownEvent value)? keyDown,
    TResult? Function(VirtualKeyboardStatusKeyUpEvent value)? keyUp,
  }) {
    return keyUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VirtualKeyboardStatusStarted value)? started,
    TResult Function(VirtualKeyboardStatusKeyDownEvent value)? keyDown,
    TResult Function(VirtualKeyboardStatusKeyUpEvent value)? keyUp,
    required TResult orElse(),
  }) {
    if (keyUp != null) {
      return keyUp(this);
    }
    return orElse();
  }
}

abstract class VirtualKeyboardStatusKeyUpEvent
    implements VirtualKeyboardStatusEvent {
  const factory VirtualKeyboardStatusKeyUpEvent(
          {required final Set<LogicalKeyboardKey> keysPressed,
          required final Set<PhysicalKeyboardKey> physicalKeysPressed}) =
      _$VirtualKeyboardStatusKeyUpEventImpl;

  Set<LogicalKeyboardKey> get keysPressed;
  Set<PhysicalKeyboardKey> get physicalKeysPressed;
  @JsonKey(ignore: true)
  _$$VirtualKeyboardStatusKeyUpEventImplCopyWith<
          _$VirtualKeyboardStatusKeyUpEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VirtualKeyboardStatusState {
  Set<LogicalKeyboardKey> get logicalKeysPressed =>
      throw _privateConstructorUsedError;
  Set<PhysicalKeyboardKey> get physicalKeysPressed =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VirtualKeyboardStatusStateCopyWith<VirtualKeyboardStatusState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VirtualKeyboardStatusStateCopyWith<$Res> {
  factory $VirtualKeyboardStatusStateCopyWith(VirtualKeyboardStatusState value,
          $Res Function(VirtualKeyboardStatusState) then) =
      _$VirtualKeyboardStatusStateCopyWithImpl<$Res,
          VirtualKeyboardStatusState>;
  @useResult
  $Res call(
      {Set<LogicalKeyboardKey> logicalKeysPressed,
      Set<PhysicalKeyboardKey> physicalKeysPressed});
}

/// @nodoc
class _$VirtualKeyboardStatusStateCopyWithImpl<$Res,
        $Val extends VirtualKeyboardStatusState>
    implements $VirtualKeyboardStatusStateCopyWith<$Res> {
  _$VirtualKeyboardStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logicalKeysPressed = null,
    Object? physicalKeysPressed = null,
  }) {
    return _then(_value.copyWith(
      logicalKeysPressed: null == logicalKeysPressed
          ? _value.logicalKeysPressed
          : logicalKeysPressed // ignore: cast_nullable_to_non_nullable
              as Set<LogicalKeyboardKey>,
      physicalKeysPressed: null == physicalKeysPressed
          ? _value.physicalKeysPressed
          : physicalKeysPressed // ignore: cast_nullable_to_non_nullable
              as Set<PhysicalKeyboardKey>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VirtualKeyboardStatusInitialImplCopyWith<$Res>
    implements $VirtualKeyboardStatusStateCopyWith<$Res> {
  factory _$$VirtualKeyboardStatusInitialImplCopyWith(
          _$VirtualKeyboardStatusInitialImpl value,
          $Res Function(_$VirtualKeyboardStatusInitialImpl) then) =
      __$$VirtualKeyboardStatusInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Set<LogicalKeyboardKey> logicalKeysPressed,
      Set<PhysicalKeyboardKey> physicalKeysPressed});
}

/// @nodoc
class __$$VirtualKeyboardStatusInitialImplCopyWithImpl<$Res>
    extends _$VirtualKeyboardStatusStateCopyWithImpl<$Res,
        _$VirtualKeyboardStatusInitialImpl>
    implements _$$VirtualKeyboardStatusInitialImplCopyWith<$Res> {
  __$$VirtualKeyboardStatusInitialImplCopyWithImpl(
      _$VirtualKeyboardStatusInitialImpl _value,
      $Res Function(_$VirtualKeyboardStatusInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logicalKeysPressed = null,
    Object? physicalKeysPressed = null,
  }) {
    return _then(_$VirtualKeyboardStatusInitialImpl(
      logicalKeysPressed: null == logicalKeysPressed
          ? _value._logicalKeysPressed
          : logicalKeysPressed // ignore: cast_nullable_to_non_nullable
              as Set<LogicalKeyboardKey>,
      physicalKeysPressed: null == physicalKeysPressed
          ? _value._physicalKeysPressed
          : physicalKeysPressed // ignore: cast_nullable_to_non_nullable
              as Set<PhysicalKeyboardKey>,
    ));
  }
}

/// @nodoc

class _$VirtualKeyboardStatusInitialImpl
    implements VirtualKeyboardStatusInitial {
  const _$VirtualKeyboardStatusInitialImpl(
      {final Set<LogicalKeyboardKey> logicalKeysPressed = const {},
      final Set<PhysicalKeyboardKey> physicalKeysPressed = const {}})
      : _logicalKeysPressed = logicalKeysPressed,
        _physicalKeysPressed = physicalKeysPressed;

  final Set<LogicalKeyboardKey> _logicalKeysPressed;
  @override
  @JsonKey()
  Set<LogicalKeyboardKey> get logicalKeysPressed {
    if (_logicalKeysPressed is EqualUnmodifiableSetView)
      return _logicalKeysPressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_logicalKeysPressed);
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
    return 'VirtualKeyboardStatusState(logicalKeysPressed: $logicalKeysPressed, physicalKeysPressed: $physicalKeysPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VirtualKeyboardStatusInitialImpl &&
            const DeepCollectionEquality()
                .equals(other._logicalKeysPressed, _logicalKeysPressed) &&
            const DeepCollectionEquality()
                .equals(other._physicalKeysPressed, _physicalKeysPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_logicalKeysPressed),
      const DeepCollectionEquality().hash(_physicalKeysPressed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VirtualKeyboardStatusInitialImplCopyWith<
          _$VirtualKeyboardStatusInitialImpl>
      get copyWith => __$$VirtualKeyboardStatusInitialImplCopyWithImpl<
          _$VirtualKeyboardStatusInitialImpl>(this, _$identity);
}

abstract class VirtualKeyboardStatusInitial
    implements VirtualKeyboardStatusState {
  const factory VirtualKeyboardStatusInitial(
          {final Set<LogicalKeyboardKey> logicalKeysPressed,
          final Set<PhysicalKeyboardKey> physicalKeysPressed}) =
      _$VirtualKeyboardStatusInitialImpl;

  @override
  Set<LogicalKeyboardKey> get logicalKeysPressed;
  @override
  Set<PhysicalKeyboardKey> get physicalKeysPressed;
  @override
  @JsonKey(ignore: true)
  _$$VirtualKeyboardStatusInitialImplCopyWith<
          _$VirtualKeyboardStatusInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
