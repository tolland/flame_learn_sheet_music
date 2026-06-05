// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/models/midi_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MidiMessage {
  int get channel => throw _privateConstructorUsedError;
  int get command => throw _privateConstructorUsedError;
  int get keyNumber => throw _privateConstructorUsedError;
  int get velocity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MidiMessageCopyWith<MidiMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidiMessageCopyWith<$Res> {
  factory $MidiMessageCopyWith(
          MidiMessage value, $Res Function(MidiMessage) then) =
      _$MidiMessageCopyWithImpl<$Res, MidiMessage>;
  @useResult
  $Res call({int channel, int command, int keyNumber, int velocity});
}

/// @nodoc
class _$MidiMessageCopyWithImpl<$Res, $Val extends MidiMessage>
    implements $MidiMessageCopyWith<$Res> {
  _$MidiMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? command = null,
    Object? keyNumber = null,
    Object? velocity = null,
  }) {
    return _then(_value.copyWith(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as int,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as int,
      keyNumber: null == keyNumber
          ? _value.keyNumber
          : keyNumber // ignore: cast_nullable_to_non_nullable
              as int,
      velocity: null == velocity
          ? _value.velocity
          : velocity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MidiMessageImplCopyWith<$Res>
    implements $MidiMessageCopyWith<$Res> {
  factory _$$MidiMessageImplCopyWith(
          _$MidiMessageImpl value, $Res Function(_$MidiMessageImpl) then) =
      __$$MidiMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int channel, int command, int keyNumber, int velocity});
}

/// @nodoc
class __$$MidiMessageImplCopyWithImpl<$Res>
    extends _$MidiMessageCopyWithImpl<$Res, _$MidiMessageImpl>
    implements _$$MidiMessageImplCopyWith<$Res> {
  __$$MidiMessageImplCopyWithImpl(
      _$MidiMessageImpl _value, $Res Function(_$MidiMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? command = null,
    Object? keyNumber = null,
    Object? velocity = null,
  }) {
    return _then(_$MidiMessageImpl(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as int,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as int,
      keyNumber: null == keyNumber
          ? _value.keyNumber
          : keyNumber // ignore: cast_nullable_to_non_nullable
              as int,
      velocity: null == velocity
          ? _value.velocity
          : velocity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MidiMessageImpl with DiagnosticableTreeMixin implements _MidiMessage {
  const _$MidiMessageImpl(
      {required this.channel,
      required this.command,
      required this.keyNumber,
      required this.velocity});

  @override
  final int channel;
  @override
  final int command;
  @override
  final int keyNumber;
  @override
  final int velocity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MidiMessage(channel: $channel, command: $command, keyNumber: $keyNumber, velocity: $velocity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MidiMessage'))
      ..add(DiagnosticsProperty('channel', channel))
      ..add(DiagnosticsProperty('command', command))
      ..add(DiagnosticsProperty('keyNumber', keyNumber))
      ..add(DiagnosticsProperty('velocity', velocity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MidiMessageImpl &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.keyNumber, keyNumber) ||
                other.keyNumber == keyNumber) &&
            (identical(other.velocity, velocity) ||
                other.velocity == velocity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, channel, command, keyNumber, velocity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MidiMessageImplCopyWith<_$MidiMessageImpl> get copyWith =>
      __$$MidiMessageImplCopyWithImpl<_$MidiMessageImpl>(this, _$identity);
}

abstract class _MidiMessage implements MidiMessage {
  const factory _MidiMessage(
      {required final int channel,
      required final int command,
      required final int keyNumber,
      required final int velocity}) = _$MidiMessageImpl;

  @override
  int get channel;
  @override
  int get command;
  @override
  int get keyNumber;
  @override
  int get velocity;
  @override
  @JsonKey(ignore: true)
  _$$MidiMessageImplCopyWith<_$MidiMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
