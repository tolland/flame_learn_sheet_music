// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/bloc/simple_piano_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SimplePianoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<int> pitches) pitchFromExternal,
    required TResult Function(int number) keyPanStart,
    required TResult Function(int number) keyPanEnd,
    required TResult Function(int number) keyPanCancel,
    required TResult Function(int number) keyMouseEnter,
    required TResult Function(int number) keyMouseExit,
    required TResult Function() pianoEnter,
    required TResult Function() pianoExit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<int> pitches)? pitchFromExternal,
    TResult? Function(int number)? keyPanStart,
    TResult? Function(int number)? keyPanEnd,
    TResult? Function(int number)? keyPanCancel,
    TResult? Function(int number)? keyMouseEnter,
    TResult? Function(int number)? keyMouseExit,
    TResult? Function()? pianoEnter,
    TResult? Function()? pianoExit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<int> pitches)? pitchFromExternal,
    TResult Function(int number)? keyPanStart,
    TResult Function(int number)? keyPanEnd,
    TResult Function(int number)? keyPanCancel,
    TResult Function(int number)? keyMouseEnter,
    TResult Function(int number)? keyMouseExit,
    TResult Function()? pianoEnter,
    TResult Function()? pianoExit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePianoPitchFromExternal value)
        pitchFromExternal,
    required TResult Function(SimplePianoKeyPanStart value) keyPanStart,
    required TResult Function(SimplePianoKeyPanEnd value) keyPanEnd,
    required TResult Function(SimplePianoKeyPanCancel value) keyPanCancel,
    required TResult Function(SimplePianoKeyMouseEnter value) keyMouseEnter,
    required TResult Function(SimplePianoKeyMouseExit value) keyMouseExit,
    required TResult Function(SimplePianoMouseEnter value) pianoEnter,
    required TResult Function(SimplePianoMouseExit value) pianoExit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult? Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult? Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult? Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult? Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult? Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult? Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult? Function(SimplePianoMouseExit value)? pianoExit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult Function(SimplePianoMouseExit value)? pianoExit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimplePianoEventCopyWith<$Res> {
  factory $SimplePianoEventCopyWith(
          SimplePianoEvent value, $Res Function(SimplePianoEvent) then) =
      _$SimplePianoEventCopyWithImpl<$Res, SimplePianoEvent>;
}

/// @nodoc
class _$SimplePianoEventCopyWithImpl<$Res, $Val extends SimplePianoEvent>
    implements $SimplePianoEventCopyWith<$Res> {
  _$SimplePianoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SimplePianoPitchFromExternalImplCopyWith<$Res> {
  factory _$$SimplePianoPitchFromExternalImplCopyWith(
          _$SimplePianoPitchFromExternalImpl value,
          $Res Function(_$SimplePianoPitchFromExternalImpl) then) =
      __$$SimplePianoPitchFromExternalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<int> pitches});
}

/// @nodoc
class __$$SimplePianoPitchFromExternalImplCopyWithImpl<$Res>
    extends _$SimplePianoEventCopyWithImpl<$Res,
        _$SimplePianoPitchFromExternalImpl>
    implements _$$SimplePianoPitchFromExternalImplCopyWith<$Res> {
  __$$SimplePianoPitchFromExternalImplCopyWithImpl(
      _$SimplePianoPitchFromExternalImpl _value,
      $Res Function(_$SimplePianoPitchFromExternalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pitches = null,
  }) {
    return _then(_$SimplePianoPitchFromExternalImpl(
      pitches: null == pitches
          ? _value._pitches
          : pitches // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc

class _$SimplePianoPitchFromExternalImpl
    implements SimplePianoPitchFromExternal {
  const _$SimplePianoPitchFromExternalImpl({required final Set<int> pitches})
      : _pitches = pitches;

  final Set<int> _pitches;
  @override
  Set<int> get pitches {
    if (_pitches is EqualUnmodifiableSetView) return _pitches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_pitches);
  }

  @override
  String toString() {
    return 'SimplePianoEvent.pitchFromExternal(pitches: $pitches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplePianoPitchFromExternalImpl &&
            const DeepCollectionEquality().equals(other._pitches, _pitches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pitches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplePianoPitchFromExternalImplCopyWith<
          _$SimplePianoPitchFromExternalImpl>
      get copyWith => __$$SimplePianoPitchFromExternalImplCopyWithImpl<
          _$SimplePianoPitchFromExternalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<int> pitches) pitchFromExternal,
    required TResult Function(int number) keyPanStart,
    required TResult Function(int number) keyPanEnd,
    required TResult Function(int number) keyPanCancel,
    required TResult Function(int number) keyMouseEnter,
    required TResult Function(int number) keyMouseExit,
    required TResult Function() pianoEnter,
    required TResult Function() pianoExit,
  }) {
    return pitchFromExternal(pitches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<int> pitches)? pitchFromExternal,
    TResult? Function(int number)? keyPanStart,
    TResult? Function(int number)? keyPanEnd,
    TResult? Function(int number)? keyPanCancel,
    TResult? Function(int number)? keyMouseEnter,
    TResult? Function(int number)? keyMouseExit,
    TResult? Function()? pianoEnter,
    TResult? Function()? pianoExit,
  }) {
    return pitchFromExternal?.call(pitches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<int> pitches)? pitchFromExternal,
    TResult Function(int number)? keyPanStart,
    TResult Function(int number)? keyPanEnd,
    TResult Function(int number)? keyPanCancel,
    TResult Function(int number)? keyMouseEnter,
    TResult Function(int number)? keyMouseExit,
    TResult Function()? pianoEnter,
    TResult Function()? pianoExit,
    required TResult orElse(),
  }) {
    if (pitchFromExternal != null) {
      return pitchFromExternal(pitches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePianoPitchFromExternal value)
        pitchFromExternal,
    required TResult Function(SimplePianoKeyPanStart value) keyPanStart,
    required TResult Function(SimplePianoKeyPanEnd value) keyPanEnd,
    required TResult Function(SimplePianoKeyPanCancel value) keyPanCancel,
    required TResult Function(SimplePianoKeyMouseEnter value) keyMouseEnter,
    required TResult Function(SimplePianoKeyMouseExit value) keyMouseExit,
    required TResult Function(SimplePianoMouseEnter value) pianoEnter,
    required TResult Function(SimplePianoMouseExit value) pianoExit,
  }) {
    return pitchFromExternal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult? Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult? Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult? Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult? Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult? Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult? Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult? Function(SimplePianoMouseExit value)? pianoExit,
  }) {
    return pitchFromExternal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult Function(SimplePianoMouseExit value)? pianoExit,
    required TResult orElse(),
  }) {
    if (pitchFromExternal != null) {
      return pitchFromExternal(this);
    }
    return orElse();
  }
}

abstract class SimplePianoPitchFromExternal implements SimplePianoEvent {
  const factory SimplePianoPitchFromExternal(
      {required final Set<int> pitches}) = _$SimplePianoPitchFromExternalImpl;

  Set<int> get pitches;
  @JsonKey(ignore: true)
  _$$SimplePianoPitchFromExternalImplCopyWith<
          _$SimplePianoPitchFromExternalImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SimplePianoKeyPanStartImplCopyWith<$Res> {
  factory _$$SimplePianoKeyPanStartImplCopyWith(
          _$SimplePianoKeyPanStartImpl value,
          $Res Function(_$SimplePianoKeyPanStartImpl) then) =
      __$$SimplePianoKeyPanStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$SimplePianoKeyPanStartImplCopyWithImpl<$Res>
    extends _$SimplePianoEventCopyWithImpl<$Res, _$SimplePianoKeyPanStartImpl>
    implements _$$SimplePianoKeyPanStartImplCopyWith<$Res> {
  __$$SimplePianoKeyPanStartImplCopyWithImpl(
      _$SimplePianoKeyPanStartImpl _value,
      $Res Function(_$SimplePianoKeyPanStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$SimplePianoKeyPanStartImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SimplePianoKeyPanStartImpl implements SimplePianoKeyPanStart {
  const _$SimplePianoKeyPanStartImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'SimplePianoEvent.keyPanStart(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplePianoKeyPanStartImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplePianoKeyPanStartImplCopyWith<_$SimplePianoKeyPanStartImpl>
      get copyWith => __$$SimplePianoKeyPanStartImplCopyWithImpl<
          _$SimplePianoKeyPanStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<int> pitches) pitchFromExternal,
    required TResult Function(int number) keyPanStart,
    required TResult Function(int number) keyPanEnd,
    required TResult Function(int number) keyPanCancel,
    required TResult Function(int number) keyMouseEnter,
    required TResult Function(int number) keyMouseExit,
    required TResult Function() pianoEnter,
    required TResult Function() pianoExit,
  }) {
    return keyPanStart(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<int> pitches)? pitchFromExternal,
    TResult? Function(int number)? keyPanStart,
    TResult? Function(int number)? keyPanEnd,
    TResult? Function(int number)? keyPanCancel,
    TResult? Function(int number)? keyMouseEnter,
    TResult? Function(int number)? keyMouseExit,
    TResult? Function()? pianoEnter,
    TResult? Function()? pianoExit,
  }) {
    return keyPanStart?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<int> pitches)? pitchFromExternal,
    TResult Function(int number)? keyPanStart,
    TResult Function(int number)? keyPanEnd,
    TResult Function(int number)? keyPanCancel,
    TResult Function(int number)? keyMouseEnter,
    TResult Function(int number)? keyMouseExit,
    TResult Function()? pianoEnter,
    TResult Function()? pianoExit,
    required TResult orElse(),
  }) {
    if (keyPanStart != null) {
      return keyPanStart(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePianoPitchFromExternal value)
        pitchFromExternal,
    required TResult Function(SimplePianoKeyPanStart value) keyPanStart,
    required TResult Function(SimplePianoKeyPanEnd value) keyPanEnd,
    required TResult Function(SimplePianoKeyPanCancel value) keyPanCancel,
    required TResult Function(SimplePianoKeyMouseEnter value) keyMouseEnter,
    required TResult Function(SimplePianoKeyMouseExit value) keyMouseExit,
    required TResult Function(SimplePianoMouseEnter value) pianoEnter,
    required TResult Function(SimplePianoMouseExit value) pianoExit,
  }) {
    return keyPanStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult? Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult? Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult? Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult? Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult? Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult? Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult? Function(SimplePianoMouseExit value)? pianoExit,
  }) {
    return keyPanStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult Function(SimplePianoMouseExit value)? pianoExit,
    required TResult orElse(),
  }) {
    if (keyPanStart != null) {
      return keyPanStart(this);
    }
    return orElse();
  }
}

abstract class SimplePianoKeyPanStart implements SimplePianoEvent {
  const factory SimplePianoKeyPanStart({required final int number}) =
      _$SimplePianoKeyPanStartImpl;

  int get number;
  @JsonKey(ignore: true)
  _$$SimplePianoKeyPanStartImplCopyWith<_$SimplePianoKeyPanStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SimplePianoKeyPanEndImplCopyWith<$Res> {
  factory _$$SimplePianoKeyPanEndImplCopyWith(_$SimplePianoKeyPanEndImpl value,
          $Res Function(_$SimplePianoKeyPanEndImpl) then) =
      __$$SimplePianoKeyPanEndImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$SimplePianoKeyPanEndImplCopyWithImpl<$Res>
    extends _$SimplePianoEventCopyWithImpl<$Res, _$SimplePianoKeyPanEndImpl>
    implements _$$SimplePianoKeyPanEndImplCopyWith<$Res> {
  __$$SimplePianoKeyPanEndImplCopyWithImpl(_$SimplePianoKeyPanEndImpl _value,
      $Res Function(_$SimplePianoKeyPanEndImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$SimplePianoKeyPanEndImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SimplePianoKeyPanEndImpl implements SimplePianoKeyPanEnd {
  const _$SimplePianoKeyPanEndImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'SimplePianoEvent.keyPanEnd(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplePianoKeyPanEndImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplePianoKeyPanEndImplCopyWith<_$SimplePianoKeyPanEndImpl>
      get copyWith =>
          __$$SimplePianoKeyPanEndImplCopyWithImpl<_$SimplePianoKeyPanEndImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<int> pitches) pitchFromExternal,
    required TResult Function(int number) keyPanStart,
    required TResult Function(int number) keyPanEnd,
    required TResult Function(int number) keyPanCancel,
    required TResult Function(int number) keyMouseEnter,
    required TResult Function(int number) keyMouseExit,
    required TResult Function() pianoEnter,
    required TResult Function() pianoExit,
  }) {
    return keyPanEnd(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<int> pitches)? pitchFromExternal,
    TResult? Function(int number)? keyPanStart,
    TResult? Function(int number)? keyPanEnd,
    TResult? Function(int number)? keyPanCancel,
    TResult? Function(int number)? keyMouseEnter,
    TResult? Function(int number)? keyMouseExit,
    TResult? Function()? pianoEnter,
    TResult? Function()? pianoExit,
  }) {
    return keyPanEnd?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<int> pitches)? pitchFromExternal,
    TResult Function(int number)? keyPanStart,
    TResult Function(int number)? keyPanEnd,
    TResult Function(int number)? keyPanCancel,
    TResult Function(int number)? keyMouseEnter,
    TResult Function(int number)? keyMouseExit,
    TResult Function()? pianoEnter,
    TResult Function()? pianoExit,
    required TResult orElse(),
  }) {
    if (keyPanEnd != null) {
      return keyPanEnd(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePianoPitchFromExternal value)
        pitchFromExternal,
    required TResult Function(SimplePianoKeyPanStart value) keyPanStart,
    required TResult Function(SimplePianoKeyPanEnd value) keyPanEnd,
    required TResult Function(SimplePianoKeyPanCancel value) keyPanCancel,
    required TResult Function(SimplePianoKeyMouseEnter value) keyMouseEnter,
    required TResult Function(SimplePianoKeyMouseExit value) keyMouseExit,
    required TResult Function(SimplePianoMouseEnter value) pianoEnter,
    required TResult Function(SimplePianoMouseExit value) pianoExit,
  }) {
    return keyPanEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult? Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult? Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult? Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult? Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult? Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult? Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult? Function(SimplePianoMouseExit value)? pianoExit,
  }) {
    return keyPanEnd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult Function(SimplePianoMouseExit value)? pianoExit,
    required TResult orElse(),
  }) {
    if (keyPanEnd != null) {
      return keyPanEnd(this);
    }
    return orElse();
  }
}

abstract class SimplePianoKeyPanEnd implements SimplePianoEvent {
  const factory SimplePianoKeyPanEnd({required final int number}) =
      _$SimplePianoKeyPanEndImpl;

  int get number;
  @JsonKey(ignore: true)
  _$$SimplePianoKeyPanEndImplCopyWith<_$SimplePianoKeyPanEndImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SimplePianoKeyPanCancelImplCopyWith<$Res> {
  factory _$$SimplePianoKeyPanCancelImplCopyWith(
          _$SimplePianoKeyPanCancelImpl value,
          $Res Function(_$SimplePianoKeyPanCancelImpl) then) =
      __$$SimplePianoKeyPanCancelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$SimplePianoKeyPanCancelImplCopyWithImpl<$Res>
    extends _$SimplePianoEventCopyWithImpl<$Res, _$SimplePianoKeyPanCancelImpl>
    implements _$$SimplePianoKeyPanCancelImplCopyWith<$Res> {
  __$$SimplePianoKeyPanCancelImplCopyWithImpl(
      _$SimplePianoKeyPanCancelImpl _value,
      $Res Function(_$SimplePianoKeyPanCancelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$SimplePianoKeyPanCancelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SimplePianoKeyPanCancelImpl implements SimplePianoKeyPanCancel {
  const _$SimplePianoKeyPanCancelImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'SimplePianoEvent.keyPanCancel(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplePianoKeyPanCancelImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplePianoKeyPanCancelImplCopyWith<_$SimplePianoKeyPanCancelImpl>
      get copyWith => __$$SimplePianoKeyPanCancelImplCopyWithImpl<
          _$SimplePianoKeyPanCancelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<int> pitches) pitchFromExternal,
    required TResult Function(int number) keyPanStart,
    required TResult Function(int number) keyPanEnd,
    required TResult Function(int number) keyPanCancel,
    required TResult Function(int number) keyMouseEnter,
    required TResult Function(int number) keyMouseExit,
    required TResult Function() pianoEnter,
    required TResult Function() pianoExit,
  }) {
    return keyPanCancel(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<int> pitches)? pitchFromExternal,
    TResult? Function(int number)? keyPanStart,
    TResult? Function(int number)? keyPanEnd,
    TResult? Function(int number)? keyPanCancel,
    TResult? Function(int number)? keyMouseEnter,
    TResult? Function(int number)? keyMouseExit,
    TResult? Function()? pianoEnter,
    TResult? Function()? pianoExit,
  }) {
    return keyPanCancel?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<int> pitches)? pitchFromExternal,
    TResult Function(int number)? keyPanStart,
    TResult Function(int number)? keyPanEnd,
    TResult Function(int number)? keyPanCancel,
    TResult Function(int number)? keyMouseEnter,
    TResult Function(int number)? keyMouseExit,
    TResult Function()? pianoEnter,
    TResult Function()? pianoExit,
    required TResult orElse(),
  }) {
    if (keyPanCancel != null) {
      return keyPanCancel(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePianoPitchFromExternal value)
        pitchFromExternal,
    required TResult Function(SimplePianoKeyPanStart value) keyPanStart,
    required TResult Function(SimplePianoKeyPanEnd value) keyPanEnd,
    required TResult Function(SimplePianoKeyPanCancel value) keyPanCancel,
    required TResult Function(SimplePianoKeyMouseEnter value) keyMouseEnter,
    required TResult Function(SimplePianoKeyMouseExit value) keyMouseExit,
    required TResult Function(SimplePianoMouseEnter value) pianoEnter,
    required TResult Function(SimplePianoMouseExit value) pianoExit,
  }) {
    return keyPanCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult? Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult? Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult? Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult? Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult? Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult? Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult? Function(SimplePianoMouseExit value)? pianoExit,
  }) {
    return keyPanCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult Function(SimplePianoMouseExit value)? pianoExit,
    required TResult orElse(),
  }) {
    if (keyPanCancel != null) {
      return keyPanCancel(this);
    }
    return orElse();
  }
}

abstract class SimplePianoKeyPanCancel implements SimplePianoEvent {
  const factory SimplePianoKeyPanCancel({required final int number}) =
      _$SimplePianoKeyPanCancelImpl;

  int get number;
  @JsonKey(ignore: true)
  _$$SimplePianoKeyPanCancelImplCopyWith<_$SimplePianoKeyPanCancelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SimplePianoKeyMouseEnterImplCopyWith<$Res> {
  factory _$$SimplePianoKeyMouseEnterImplCopyWith(
          _$SimplePianoKeyMouseEnterImpl value,
          $Res Function(_$SimplePianoKeyMouseEnterImpl) then) =
      __$$SimplePianoKeyMouseEnterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$SimplePianoKeyMouseEnterImplCopyWithImpl<$Res>
    extends _$SimplePianoEventCopyWithImpl<$Res, _$SimplePianoKeyMouseEnterImpl>
    implements _$$SimplePianoKeyMouseEnterImplCopyWith<$Res> {
  __$$SimplePianoKeyMouseEnterImplCopyWithImpl(
      _$SimplePianoKeyMouseEnterImpl _value,
      $Res Function(_$SimplePianoKeyMouseEnterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$SimplePianoKeyMouseEnterImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SimplePianoKeyMouseEnterImpl implements SimplePianoKeyMouseEnter {
  const _$SimplePianoKeyMouseEnterImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'SimplePianoEvent.keyMouseEnter(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplePianoKeyMouseEnterImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplePianoKeyMouseEnterImplCopyWith<_$SimplePianoKeyMouseEnterImpl>
      get copyWith => __$$SimplePianoKeyMouseEnterImplCopyWithImpl<
          _$SimplePianoKeyMouseEnterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<int> pitches) pitchFromExternal,
    required TResult Function(int number) keyPanStart,
    required TResult Function(int number) keyPanEnd,
    required TResult Function(int number) keyPanCancel,
    required TResult Function(int number) keyMouseEnter,
    required TResult Function(int number) keyMouseExit,
    required TResult Function() pianoEnter,
    required TResult Function() pianoExit,
  }) {
    return keyMouseEnter(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<int> pitches)? pitchFromExternal,
    TResult? Function(int number)? keyPanStart,
    TResult? Function(int number)? keyPanEnd,
    TResult? Function(int number)? keyPanCancel,
    TResult? Function(int number)? keyMouseEnter,
    TResult? Function(int number)? keyMouseExit,
    TResult? Function()? pianoEnter,
    TResult? Function()? pianoExit,
  }) {
    return keyMouseEnter?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<int> pitches)? pitchFromExternal,
    TResult Function(int number)? keyPanStart,
    TResult Function(int number)? keyPanEnd,
    TResult Function(int number)? keyPanCancel,
    TResult Function(int number)? keyMouseEnter,
    TResult Function(int number)? keyMouseExit,
    TResult Function()? pianoEnter,
    TResult Function()? pianoExit,
    required TResult orElse(),
  }) {
    if (keyMouseEnter != null) {
      return keyMouseEnter(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePianoPitchFromExternal value)
        pitchFromExternal,
    required TResult Function(SimplePianoKeyPanStart value) keyPanStart,
    required TResult Function(SimplePianoKeyPanEnd value) keyPanEnd,
    required TResult Function(SimplePianoKeyPanCancel value) keyPanCancel,
    required TResult Function(SimplePianoKeyMouseEnter value) keyMouseEnter,
    required TResult Function(SimplePianoKeyMouseExit value) keyMouseExit,
    required TResult Function(SimplePianoMouseEnter value) pianoEnter,
    required TResult Function(SimplePianoMouseExit value) pianoExit,
  }) {
    return keyMouseEnter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult? Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult? Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult? Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult? Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult? Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult? Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult? Function(SimplePianoMouseExit value)? pianoExit,
  }) {
    return keyMouseEnter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult Function(SimplePianoMouseExit value)? pianoExit,
    required TResult orElse(),
  }) {
    if (keyMouseEnter != null) {
      return keyMouseEnter(this);
    }
    return orElse();
  }
}

abstract class SimplePianoKeyMouseEnter implements SimplePianoEvent {
  const factory SimplePianoKeyMouseEnter({required final int number}) =
      _$SimplePianoKeyMouseEnterImpl;

  int get number;
  @JsonKey(ignore: true)
  _$$SimplePianoKeyMouseEnterImplCopyWith<_$SimplePianoKeyMouseEnterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SimplePianoKeyMouseExitImplCopyWith<$Res> {
  factory _$$SimplePianoKeyMouseExitImplCopyWith(
          _$SimplePianoKeyMouseExitImpl value,
          $Res Function(_$SimplePianoKeyMouseExitImpl) then) =
      __$$SimplePianoKeyMouseExitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$SimplePianoKeyMouseExitImplCopyWithImpl<$Res>
    extends _$SimplePianoEventCopyWithImpl<$Res, _$SimplePianoKeyMouseExitImpl>
    implements _$$SimplePianoKeyMouseExitImplCopyWith<$Res> {
  __$$SimplePianoKeyMouseExitImplCopyWithImpl(
      _$SimplePianoKeyMouseExitImpl _value,
      $Res Function(_$SimplePianoKeyMouseExitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$SimplePianoKeyMouseExitImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SimplePianoKeyMouseExitImpl implements SimplePianoKeyMouseExit {
  const _$SimplePianoKeyMouseExitImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'SimplePianoEvent.keyMouseExit(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplePianoKeyMouseExitImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplePianoKeyMouseExitImplCopyWith<_$SimplePianoKeyMouseExitImpl>
      get copyWith => __$$SimplePianoKeyMouseExitImplCopyWithImpl<
          _$SimplePianoKeyMouseExitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<int> pitches) pitchFromExternal,
    required TResult Function(int number) keyPanStart,
    required TResult Function(int number) keyPanEnd,
    required TResult Function(int number) keyPanCancel,
    required TResult Function(int number) keyMouseEnter,
    required TResult Function(int number) keyMouseExit,
    required TResult Function() pianoEnter,
    required TResult Function() pianoExit,
  }) {
    return keyMouseExit(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<int> pitches)? pitchFromExternal,
    TResult? Function(int number)? keyPanStart,
    TResult? Function(int number)? keyPanEnd,
    TResult? Function(int number)? keyPanCancel,
    TResult? Function(int number)? keyMouseEnter,
    TResult? Function(int number)? keyMouseExit,
    TResult? Function()? pianoEnter,
    TResult? Function()? pianoExit,
  }) {
    return keyMouseExit?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<int> pitches)? pitchFromExternal,
    TResult Function(int number)? keyPanStart,
    TResult Function(int number)? keyPanEnd,
    TResult Function(int number)? keyPanCancel,
    TResult Function(int number)? keyMouseEnter,
    TResult Function(int number)? keyMouseExit,
    TResult Function()? pianoEnter,
    TResult Function()? pianoExit,
    required TResult orElse(),
  }) {
    if (keyMouseExit != null) {
      return keyMouseExit(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePianoPitchFromExternal value)
        pitchFromExternal,
    required TResult Function(SimplePianoKeyPanStart value) keyPanStart,
    required TResult Function(SimplePianoKeyPanEnd value) keyPanEnd,
    required TResult Function(SimplePianoKeyPanCancel value) keyPanCancel,
    required TResult Function(SimplePianoKeyMouseEnter value) keyMouseEnter,
    required TResult Function(SimplePianoKeyMouseExit value) keyMouseExit,
    required TResult Function(SimplePianoMouseEnter value) pianoEnter,
    required TResult Function(SimplePianoMouseExit value) pianoExit,
  }) {
    return keyMouseExit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult? Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult? Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult? Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult? Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult? Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult? Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult? Function(SimplePianoMouseExit value)? pianoExit,
  }) {
    return keyMouseExit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult Function(SimplePianoMouseExit value)? pianoExit,
    required TResult orElse(),
  }) {
    if (keyMouseExit != null) {
      return keyMouseExit(this);
    }
    return orElse();
  }
}

abstract class SimplePianoKeyMouseExit implements SimplePianoEvent {
  const factory SimplePianoKeyMouseExit({required final int number}) =
      _$SimplePianoKeyMouseExitImpl;

  int get number;
  @JsonKey(ignore: true)
  _$$SimplePianoKeyMouseExitImplCopyWith<_$SimplePianoKeyMouseExitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SimplePianoMouseEnterImplCopyWith<$Res> {
  factory _$$SimplePianoMouseEnterImplCopyWith(
          _$SimplePianoMouseEnterImpl value,
          $Res Function(_$SimplePianoMouseEnterImpl) then) =
      __$$SimplePianoMouseEnterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SimplePianoMouseEnterImplCopyWithImpl<$Res>
    extends _$SimplePianoEventCopyWithImpl<$Res, _$SimplePianoMouseEnterImpl>
    implements _$$SimplePianoMouseEnterImplCopyWith<$Res> {
  __$$SimplePianoMouseEnterImplCopyWithImpl(_$SimplePianoMouseEnterImpl _value,
      $Res Function(_$SimplePianoMouseEnterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SimplePianoMouseEnterImpl implements SimplePianoMouseEnter {
  const _$SimplePianoMouseEnterImpl();

  @override
  String toString() {
    return 'SimplePianoEvent.pianoEnter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplePianoMouseEnterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<int> pitches) pitchFromExternal,
    required TResult Function(int number) keyPanStart,
    required TResult Function(int number) keyPanEnd,
    required TResult Function(int number) keyPanCancel,
    required TResult Function(int number) keyMouseEnter,
    required TResult Function(int number) keyMouseExit,
    required TResult Function() pianoEnter,
    required TResult Function() pianoExit,
  }) {
    return pianoEnter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<int> pitches)? pitchFromExternal,
    TResult? Function(int number)? keyPanStart,
    TResult? Function(int number)? keyPanEnd,
    TResult? Function(int number)? keyPanCancel,
    TResult? Function(int number)? keyMouseEnter,
    TResult? Function(int number)? keyMouseExit,
    TResult? Function()? pianoEnter,
    TResult? Function()? pianoExit,
  }) {
    return pianoEnter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<int> pitches)? pitchFromExternal,
    TResult Function(int number)? keyPanStart,
    TResult Function(int number)? keyPanEnd,
    TResult Function(int number)? keyPanCancel,
    TResult Function(int number)? keyMouseEnter,
    TResult Function(int number)? keyMouseExit,
    TResult Function()? pianoEnter,
    TResult Function()? pianoExit,
    required TResult orElse(),
  }) {
    if (pianoEnter != null) {
      return pianoEnter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePianoPitchFromExternal value)
        pitchFromExternal,
    required TResult Function(SimplePianoKeyPanStart value) keyPanStart,
    required TResult Function(SimplePianoKeyPanEnd value) keyPanEnd,
    required TResult Function(SimplePianoKeyPanCancel value) keyPanCancel,
    required TResult Function(SimplePianoKeyMouseEnter value) keyMouseEnter,
    required TResult Function(SimplePianoKeyMouseExit value) keyMouseExit,
    required TResult Function(SimplePianoMouseEnter value) pianoEnter,
    required TResult Function(SimplePianoMouseExit value) pianoExit,
  }) {
    return pianoEnter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult? Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult? Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult? Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult? Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult? Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult? Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult? Function(SimplePianoMouseExit value)? pianoExit,
  }) {
    return pianoEnter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult Function(SimplePianoMouseExit value)? pianoExit,
    required TResult orElse(),
  }) {
    if (pianoEnter != null) {
      return pianoEnter(this);
    }
    return orElse();
  }
}

abstract class SimplePianoMouseEnter implements SimplePianoEvent {
  const factory SimplePianoMouseEnter() = _$SimplePianoMouseEnterImpl;
}

/// @nodoc
abstract class _$$SimplePianoMouseExitImplCopyWith<$Res> {
  factory _$$SimplePianoMouseExitImplCopyWith(_$SimplePianoMouseExitImpl value,
          $Res Function(_$SimplePianoMouseExitImpl) then) =
      __$$SimplePianoMouseExitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SimplePianoMouseExitImplCopyWithImpl<$Res>
    extends _$SimplePianoEventCopyWithImpl<$Res, _$SimplePianoMouseExitImpl>
    implements _$$SimplePianoMouseExitImplCopyWith<$Res> {
  __$$SimplePianoMouseExitImplCopyWithImpl(_$SimplePianoMouseExitImpl _value,
      $Res Function(_$SimplePianoMouseExitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SimplePianoMouseExitImpl implements SimplePianoMouseExit {
  const _$SimplePianoMouseExitImpl();

  @override
  String toString() {
    return 'SimplePianoEvent.pianoExit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplePianoMouseExitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<int> pitches) pitchFromExternal,
    required TResult Function(int number) keyPanStart,
    required TResult Function(int number) keyPanEnd,
    required TResult Function(int number) keyPanCancel,
    required TResult Function(int number) keyMouseEnter,
    required TResult Function(int number) keyMouseExit,
    required TResult Function() pianoEnter,
    required TResult Function() pianoExit,
  }) {
    return pianoExit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<int> pitches)? pitchFromExternal,
    TResult? Function(int number)? keyPanStart,
    TResult? Function(int number)? keyPanEnd,
    TResult? Function(int number)? keyPanCancel,
    TResult? Function(int number)? keyMouseEnter,
    TResult? Function(int number)? keyMouseExit,
    TResult? Function()? pianoEnter,
    TResult? Function()? pianoExit,
  }) {
    return pianoExit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<int> pitches)? pitchFromExternal,
    TResult Function(int number)? keyPanStart,
    TResult Function(int number)? keyPanEnd,
    TResult Function(int number)? keyPanCancel,
    TResult Function(int number)? keyMouseEnter,
    TResult Function(int number)? keyMouseExit,
    TResult Function()? pianoEnter,
    TResult Function()? pianoExit,
    required TResult orElse(),
  }) {
    if (pianoExit != null) {
      return pianoExit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePianoPitchFromExternal value)
        pitchFromExternal,
    required TResult Function(SimplePianoKeyPanStart value) keyPanStart,
    required TResult Function(SimplePianoKeyPanEnd value) keyPanEnd,
    required TResult Function(SimplePianoKeyPanCancel value) keyPanCancel,
    required TResult Function(SimplePianoKeyMouseEnter value) keyMouseEnter,
    required TResult Function(SimplePianoKeyMouseExit value) keyMouseExit,
    required TResult Function(SimplePianoMouseEnter value) pianoEnter,
    required TResult Function(SimplePianoMouseExit value) pianoExit,
  }) {
    return pianoExit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult? Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult? Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult? Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult? Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult? Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult? Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult? Function(SimplePianoMouseExit value)? pianoExit,
  }) {
    return pianoExit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePianoPitchFromExternal value)? pitchFromExternal,
    TResult Function(SimplePianoKeyPanStart value)? keyPanStart,
    TResult Function(SimplePianoKeyPanEnd value)? keyPanEnd,
    TResult Function(SimplePianoKeyPanCancel value)? keyPanCancel,
    TResult Function(SimplePianoKeyMouseEnter value)? keyMouseEnter,
    TResult Function(SimplePianoKeyMouseExit value)? keyMouseExit,
    TResult Function(SimplePianoMouseEnter value)? pianoEnter,
    TResult Function(SimplePianoMouseExit value)? pianoExit,
    required TResult orElse(),
  }) {
    if (pianoExit != null) {
      return pianoExit(this);
    }
    return orElse();
  }
}

abstract class SimplePianoMouseExit implements SimplePianoEvent {
  const factory SimplePianoMouseExit() = _$SimplePianoMouseExitImpl;
}
