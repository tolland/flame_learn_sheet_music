// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../src/bloc/sound_service/sound_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SoundServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int channel, int number, int velocity) noteOn,
    required TResult Function() notesOn,
    required TResult Function(int channel, int number, int velocity) noteOff,
    required TResult Function() stop,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() mute,
    required TResult Function() unmute,
    required TResult Function() reset,
    required TResult Function() touch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int channel, int number, int velocity)? noteOn,
    TResult? Function()? notesOn,
    TResult? Function(int channel, int number, int velocity)? noteOff,
    TResult? Function()? stop,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? mute,
    TResult? Function()? unmute,
    TResult? Function()? reset,
    TResult? Function()? touch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int channel, int number, int velocity)? noteOn,
    TResult Function()? notesOn,
    TResult Function(int channel, int number, int velocity)? noteOff,
    TResult Function()? stop,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? mute,
    TResult Function()? unmute,
    TResult Function()? reset,
    TResult Function()? touch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SoundServiceStart value) start,
    required TResult Function(SoundServiceNoteOn value) noteOn,
    required TResult Function(SoundServiceNotesOn value) notesOn,
    required TResult Function(SoundServiceNoteOff value) noteOff,
    required TResult Function(SoundServiceStop value) stop,
    required TResult Function(PauseSoundService value) pause,
    required TResult Function(ResumeSoundService value) resume,
    required TResult Function(MuteSoundService value) mute,
    required TResult Function(UnmuteSoundService value) unmute,
    required TResult Function(ResetSoundService value) reset,
    required TResult Function(SoundServiceTouch value) touch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SoundServiceStart value)? start,
    TResult? Function(SoundServiceNoteOn value)? noteOn,
    TResult? Function(SoundServiceNotesOn value)? notesOn,
    TResult? Function(SoundServiceNoteOff value)? noteOff,
    TResult? Function(SoundServiceStop value)? stop,
    TResult? Function(PauseSoundService value)? pause,
    TResult? Function(ResumeSoundService value)? resume,
    TResult? Function(MuteSoundService value)? mute,
    TResult? Function(UnmuteSoundService value)? unmute,
    TResult? Function(ResetSoundService value)? reset,
    TResult? Function(SoundServiceTouch value)? touch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SoundServiceStart value)? start,
    TResult Function(SoundServiceNoteOn value)? noteOn,
    TResult Function(SoundServiceNotesOn value)? notesOn,
    TResult Function(SoundServiceNoteOff value)? noteOff,
    TResult Function(SoundServiceStop value)? stop,
    TResult Function(PauseSoundService value)? pause,
    TResult Function(ResumeSoundService value)? resume,
    TResult Function(MuteSoundService value)? mute,
    TResult Function(UnmuteSoundService value)? unmute,
    TResult Function(ResetSoundService value)? reset,
    TResult Function(SoundServiceTouch value)? touch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoundServiceEventCopyWith<$Res> {
  factory $SoundServiceEventCopyWith(
          SoundServiceEvent value, $Res Function(SoundServiceEvent) then) =
      _$SoundServiceEventCopyWithImpl<$Res, SoundServiceEvent>;
}

/// @nodoc
class _$SoundServiceEventCopyWithImpl<$Res, $Val extends SoundServiceEvent>
    implements $SoundServiceEventCopyWith<$Res> {
  _$SoundServiceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SoundServiceStartImplCopyWith<$Res> {
  factory _$$SoundServiceStartImplCopyWith(_$SoundServiceStartImpl value,
          $Res Function(_$SoundServiceStartImpl) then) =
      __$$SoundServiceStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SoundServiceStartImplCopyWithImpl<$Res>
    extends _$SoundServiceEventCopyWithImpl<$Res, _$SoundServiceStartImpl>
    implements _$$SoundServiceStartImplCopyWith<$Res> {
  __$$SoundServiceStartImplCopyWithImpl(_$SoundServiceStartImpl _value,
      $Res Function(_$SoundServiceStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SoundServiceStartImpl
    with DiagnosticableTreeMixin
    implements SoundServiceStart {
  const _$SoundServiceStartImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SoundServiceEvent.start()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SoundServiceEvent.start'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SoundServiceStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int channel, int number, int velocity) noteOn,
    required TResult Function() notesOn,
    required TResult Function(int channel, int number, int velocity) noteOff,
    required TResult Function() stop,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() mute,
    required TResult Function() unmute,
    required TResult Function() reset,
    required TResult Function() touch,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int channel, int number, int velocity)? noteOn,
    TResult? Function()? notesOn,
    TResult? Function(int channel, int number, int velocity)? noteOff,
    TResult? Function()? stop,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? mute,
    TResult? Function()? unmute,
    TResult? Function()? reset,
    TResult? Function()? touch,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int channel, int number, int velocity)? noteOn,
    TResult Function()? notesOn,
    TResult Function(int channel, int number, int velocity)? noteOff,
    TResult Function()? stop,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? mute,
    TResult Function()? unmute,
    TResult Function()? reset,
    TResult Function()? touch,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SoundServiceStart value) start,
    required TResult Function(SoundServiceNoteOn value) noteOn,
    required TResult Function(SoundServiceNotesOn value) notesOn,
    required TResult Function(SoundServiceNoteOff value) noteOff,
    required TResult Function(SoundServiceStop value) stop,
    required TResult Function(PauseSoundService value) pause,
    required TResult Function(ResumeSoundService value) resume,
    required TResult Function(MuteSoundService value) mute,
    required TResult Function(UnmuteSoundService value) unmute,
    required TResult Function(ResetSoundService value) reset,
    required TResult Function(SoundServiceTouch value) touch,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SoundServiceStart value)? start,
    TResult? Function(SoundServiceNoteOn value)? noteOn,
    TResult? Function(SoundServiceNotesOn value)? notesOn,
    TResult? Function(SoundServiceNoteOff value)? noteOff,
    TResult? Function(SoundServiceStop value)? stop,
    TResult? Function(PauseSoundService value)? pause,
    TResult? Function(ResumeSoundService value)? resume,
    TResult? Function(MuteSoundService value)? mute,
    TResult? Function(UnmuteSoundService value)? unmute,
    TResult? Function(ResetSoundService value)? reset,
    TResult? Function(SoundServiceTouch value)? touch,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SoundServiceStart value)? start,
    TResult Function(SoundServiceNoteOn value)? noteOn,
    TResult Function(SoundServiceNotesOn value)? notesOn,
    TResult Function(SoundServiceNoteOff value)? noteOff,
    TResult Function(SoundServiceStop value)? stop,
    TResult Function(PauseSoundService value)? pause,
    TResult Function(ResumeSoundService value)? resume,
    TResult Function(MuteSoundService value)? mute,
    TResult Function(UnmuteSoundService value)? unmute,
    TResult Function(ResetSoundService value)? reset,
    TResult Function(SoundServiceTouch value)? touch,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class SoundServiceStart implements SoundServiceEvent {
  const factory SoundServiceStart() = _$SoundServiceStartImpl;
}

/// @nodoc
abstract class _$$SoundServiceNoteOnImplCopyWith<$Res> {
  factory _$$SoundServiceNoteOnImplCopyWith(_$SoundServiceNoteOnImpl value,
          $Res Function(_$SoundServiceNoteOnImpl) then) =
      __$$SoundServiceNoteOnImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int channel, int number, int velocity});
}

/// @nodoc
class __$$SoundServiceNoteOnImplCopyWithImpl<$Res>
    extends _$SoundServiceEventCopyWithImpl<$Res, _$SoundServiceNoteOnImpl>
    implements _$$SoundServiceNoteOnImplCopyWith<$Res> {
  __$$SoundServiceNoteOnImplCopyWithImpl(_$SoundServiceNoteOnImpl _value,
      $Res Function(_$SoundServiceNoteOnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? number = null,
    Object? velocity = null,
  }) {
    return _then(_$SoundServiceNoteOnImpl(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      velocity: null == velocity
          ? _value.velocity
          : velocity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SoundServiceNoteOnImpl
    with DiagnosticableTreeMixin
    implements SoundServiceNoteOn {
  const _$SoundServiceNoteOnImpl(
      {required this.channel, required this.number, required this.velocity});

  /// The first data byte is the channel number. There are 16 possible MIDI
  /// channels (1-16), which are numbered from 0 to 15.
  @override
  final int channel;

  /// The first data is the note number. There are 128 possible notes on
  /// a MIDI device, numbered 0 to 127 (where Middle C is note number 60).
  @override
  final int number;

  /// The second data byte is the velocity, a value from 0 to 127.
  /// velocity of 0 is equivalent to noteOff @TODO(tolland) do we implement?
  @override
  final int velocity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SoundServiceEvent.noteOn(channel: $channel, number: $number, velocity: $velocity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SoundServiceEvent.noteOn'))
      ..add(DiagnosticsProperty('channel', channel))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('velocity', velocity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoundServiceNoteOnImpl &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.velocity, velocity) ||
                other.velocity == velocity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channel, number, velocity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SoundServiceNoteOnImplCopyWith<_$SoundServiceNoteOnImpl> get copyWith =>
      __$$SoundServiceNoteOnImplCopyWithImpl<_$SoundServiceNoteOnImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int channel, int number, int velocity) noteOn,
    required TResult Function() notesOn,
    required TResult Function(int channel, int number, int velocity) noteOff,
    required TResult Function() stop,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() mute,
    required TResult Function() unmute,
    required TResult Function() reset,
    required TResult Function() touch,
  }) {
    return noteOn(channel, number, velocity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int channel, int number, int velocity)? noteOn,
    TResult? Function()? notesOn,
    TResult? Function(int channel, int number, int velocity)? noteOff,
    TResult? Function()? stop,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? mute,
    TResult? Function()? unmute,
    TResult? Function()? reset,
    TResult? Function()? touch,
  }) {
    return noteOn?.call(channel, number, velocity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int channel, int number, int velocity)? noteOn,
    TResult Function()? notesOn,
    TResult Function(int channel, int number, int velocity)? noteOff,
    TResult Function()? stop,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? mute,
    TResult Function()? unmute,
    TResult Function()? reset,
    TResult Function()? touch,
    required TResult orElse(),
  }) {
    if (noteOn != null) {
      return noteOn(channel, number, velocity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SoundServiceStart value) start,
    required TResult Function(SoundServiceNoteOn value) noteOn,
    required TResult Function(SoundServiceNotesOn value) notesOn,
    required TResult Function(SoundServiceNoteOff value) noteOff,
    required TResult Function(SoundServiceStop value) stop,
    required TResult Function(PauseSoundService value) pause,
    required TResult Function(ResumeSoundService value) resume,
    required TResult Function(MuteSoundService value) mute,
    required TResult Function(UnmuteSoundService value) unmute,
    required TResult Function(ResetSoundService value) reset,
    required TResult Function(SoundServiceTouch value) touch,
  }) {
    return noteOn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SoundServiceStart value)? start,
    TResult? Function(SoundServiceNoteOn value)? noteOn,
    TResult? Function(SoundServiceNotesOn value)? notesOn,
    TResult? Function(SoundServiceNoteOff value)? noteOff,
    TResult? Function(SoundServiceStop value)? stop,
    TResult? Function(PauseSoundService value)? pause,
    TResult? Function(ResumeSoundService value)? resume,
    TResult? Function(MuteSoundService value)? mute,
    TResult? Function(UnmuteSoundService value)? unmute,
    TResult? Function(ResetSoundService value)? reset,
    TResult? Function(SoundServiceTouch value)? touch,
  }) {
    return noteOn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SoundServiceStart value)? start,
    TResult Function(SoundServiceNoteOn value)? noteOn,
    TResult Function(SoundServiceNotesOn value)? notesOn,
    TResult Function(SoundServiceNoteOff value)? noteOff,
    TResult Function(SoundServiceStop value)? stop,
    TResult Function(PauseSoundService value)? pause,
    TResult Function(ResumeSoundService value)? resume,
    TResult Function(MuteSoundService value)? mute,
    TResult Function(UnmuteSoundService value)? unmute,
    TResult Function(ResetSoundService value)? reset,
    TResult Function(SoundServiceTouch value)? touch,
    required TResult orElse(),
  }) {
    if (noteOn != null) {
      return noteOn(this);
    }
    return orElse();
  }
}

abstract class SoundServiceNoteOn implements SoundServiceEvent {
  const factory SoundServiceNoteOn(
      {required final int channel,
      required final int number,
      required final int velocity}) = _$SoundServiceNoteOnImpl;

  /// The first data byte is the channel number. There are 16 possible MIDI
  /// channels (1-16), which are numbered from 0 to 15.
  int get channel;

  /// The first data is the note number. There are 128 possible notes on
  /// a MIDI device, numbered 0 to 127 (where Middle C is note number 60).
  int get number;

  /// The second data byte is the velocity, a value from 0 to 127.
  /// velocity of 0 is equivalent to noteOff @TODO(tolland) do we implement?
  int get velocity;
  @JsonKey(ignore: true)
  _$$SoundServiceNoteOnImplCopyWith<_$SoundServiceNoteOnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SoundServiceNotesOnImplCopyWith<$Res> {
  factory _$$SoundServiceNotesOnImplCopyWith(_$SoundServiceNotesOnImpl value,
          $Res Function(_$SoundServiceNotesOnImpl) then) =
      __$$SoundServiceNotesOnImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SoundServiceNotesOnImplCopyWithImpl<$Res>
    extends _$SoundServiceEventCopyWithImpl<$Res, _$SoundServiceNotesOnImpl>
    implements _$$SoundServiceNotesOnImplCopyWith<$Res> {
  __$$SoundServiceNotesOnImplCopyWithImpl(_$SoundServiceNotesOnImpl _value,
      $Res Function(_$SoundServiceNotesOnImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SoundServiceNotesOnImpl
    with DiagnosticableTreeMixin
    implements SoundServiceNotesOn {
  const _$SoundServiceNotesOnImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SoundServiceEvent.notesOn()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SoundServiceEvent.notesOn'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoundServiceNotesOnImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int channel, int number, int velocity) noteOn,
    required TResult Function() notesOn,
    required TResult Function(int channel, int number, int velocity) noteOff,
    required TResult Function() stop,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() mute,
    required TResult Function() unmute,
    required TResult Function() reset,
    required TResult Function() touch,
  }) {
    return notesOn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int channel, int number, int velocity)? noteOn,
    TResult? Function()? notesOn,
    TResult? Function(int channel, int number, int velocity)? noteOff,
    TResult? Function()? stop,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? mute,
    TResult? Function()? unmute,
    TResult? Function()? reset,
    TResult? Function()? touch,
  }) {
    return notesOn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int channel, int number, int velocity)? noteOn,
    TResult Function()? notesOn,
    TResult Function(int channel, int number, int velocity)? noteOff,
    TResult Function()? stop,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? mute,
    TResult Function()? unmute,
    TResult Function()? reset,
    TResult Function()? touch,
    required TResult orElse(),
  }) {
    if (notesOn != null) {
      return notesOn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SoundServiceStart value) start,
    required TResult Function(SoundServiceNoteOn value) noteOn,
    required TResult Function(SoundServiceNotesOn value) notesOn,
    required TResult Function(SoundServiceNoteOff value) noteOff,
    required TResult Function(SoundServiceStop value) stop,
    required TResult Function(PauseSoundService value) pause,
    required TResult Function(ResumeSoundService value) resume,
    required TResult Function(MuteSoundService value) mute,
    required TResult Function(UnmuteSoundService value) unmute,
    required TResult Function(ResetSoundService value) reset,
    required TResult Function(SoundServiceTouch value) touch,
  }) {
    return notesOn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SoundServiceStart value)? start,
    TResult? Function(SoundServiceNoteOn value)? noteOn,
    TResult? Function(SoundServiceNotesOn value)? notesOn,
    TResult? Function(SoundServiceNoteOff value)? noteOff,
    TResult? Function(SoundServiceStop value)? stop,
    TResult? Function(PauseSoundService value)? pause,
    TResult? Function(ResumeSoundService value)? resume,
    TResult? Function(MuteSoundService value)? mute,
    TResult? Function(UnmuteSoundService value)? unmute,
    TResult? Function(ResetSoundService value)? reset,
    TResult? Function(SoundServiceTouch value)? touch,
  }) {
    return notesOn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SoundServiceStart value)? start,
    TResult Function(SoundServiceNoteOn value)? noteOn,
    TResult Function(SoundServiceNotesOn value)? notesOn,
    TResult Function(SoundServiceNoteOff value)? noteOff,
    TResult Function(SoundServiceStop value)? stop,
    TResult Function(PauseSoundService value)? pause,
    TResult Function(ResumeSoundService value)? resume,
    TResult Function(MuteSoundService value)? mute,
    TResult Function(UnmuteSoundService value)? unmute,
    TResult Function(ResetSoundService value)? reset,
    TResult Function(SoundServiceTouch value)? touch,
    required TResult orElse(),
  }) {
    if (notesOn != null) {
      return notesOn(this);
    }
    return orElse();
  }
}

abstract class SoundServiceNotesOn implements SoundServiceEvent {
  const factory SoundServiceNotesOn() = _$SoundServiceNotesOnImpl;
}

/// @nodoc
abstract class _$$SoundServiceNoteOffImplCopyWith<$Res> {
  factory _$$SoundServiceNoteOffImplCopyWith(_$SoundServiceNoteOffImpl value,
          $Res Function(_$SoundServiceNoteOffImpl) then) =
      __$$SoundServiceNoteOffImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int channel, int number, int velocity});
}

/// @nodoc
class __$$SoundServiceNoteOffImplCopyWithImpl<$Res>
    extends _$SoundServiceEventCopyWithImpl<$Res, _$SoundServiceNoteOffImpl>
    implements _$$SoundServiceNoteOffImplCopyWith<$Res> {
  __$$SoundServiceNoteOffImplCopyWithImpl(_$SoundServiceNoteOffImpl _value,
      $Res Function(_$SoundServiceNoteOffImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? number = null,
    Object? velocity = null,
  }) {
    return _then(_$SoundServiceNoteOffImpl(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      velocity: null == velocity
          ? _value.velocity
          : velocity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SoundServiceNoteOffImpl
    with DiagnosticableTreeMixin
    implements SoundServiceNoteOff {
  const _$SoundServiceNoteOffImpl(
      {required this.channel, required this.number, required this.velocity});

  @override
  final int channel;
  @override
  final int number;

  /// apparently velocity is usually ignored for NoteOff
  @override
  final int velocity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SoundServiceEvent.noteOff(channel: $channel, number: $number, velocity: $velocity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SoundServiceEvent.noteOff'))
      ..add(DiagnosticsProperty('channel', channel))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('velocity', velocity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoundServiceNoteOffImpl &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.velocity, velocity) ||
                other.velocity == velocity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channel, number, velocity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SoundServiceNoteOffImplCopyWith<_$SoundServiceNoteOffImpl> get copyWith =>
      __$$SoundServiceNoteOffImplCopyWithImpl<_$SoundServiceNoteOffImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int channel, int number, int velocity) noteOn,
    required TResult Function() notesOn,
    required TResult Function(int channel, int number, int velocity) noteOff,
    required TResult Function() stop,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() mute,
    required TResult Function() unmute,
    required TResult Function() reset,
    required TResult Function() touch,
  }) {
    return noteOff(channel, number, velocity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int channel, int number, int velocity)? noteOn,
    TResult? Function()? notesOn,
    TResult? Function(int channel, int number, int velocity)? noteOff,
    TResult? Function()? stop,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? mute,
    TResult? Function()? unmute,
    TResult? Function()? reset,
    TResult? Function()? touch,
  }) {
    return noteOff?.call(channel, number, velocity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int channel, int number, int velocity)? noteOn,
    TResult Function()? notesOn,
    TResult Function(int channel, int number, int velocity)? noteOff,
    TResult Function()? stop,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? mute,
    TResult Function()? unmute,
    TResult Function()? reset,
    TResult Function()? touch,
    required TResult orElse(),
  }) {
    if (noteOff != null) {
      return noteOff(channel, number, velocity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SoundServiceStart value) start,
    required TResult Function(SoundServiceNoteOn value) noteOn,
    required TResult Function(SoundServiceNotesOn value) notesOn,
    required TResult Function(SoundServiceNoteOff value) noteOff,
    required TResult Function(SoundServiceStop value) stop,
    required TResult Function(PauseSoundService value) pause,
    required TResult Function(ResumeSoundService value) resume,
    required TResult Function(MuteSoundService value) mute,
    required TResult Function(UnmuteSoundService value) unmute,
    required TResult Function(ResetSoundService value) reset,
    required TResult Function(SoundServiceTouch value) touch,
  }) {
    return noteOff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SoundServiceStart value)? start,
    TResult? Function(SoundServiceNoteOn value)? noteOn,
    TResult? Function(SoundServiceNotesOn value)? notesOn,
    TResult? Function(SoundServiceNoteOff value)? noteOff,
    TResult? Function(SoundServiceStop value)? stop,
    TResult? Function(PauseSoundService value)? pause,
    TResult? Function(ResumeSoundService value)? resume,
    TResult? Function(MuteSoundService value)? mute,
    TResult? Function(UnmuteSoundService value)? unmute,
    TResult? Function(ResetSoundService value)? reset,
    TResult? Function(SoundServiceTouch value)? touch,
  }) {
    return noteOff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SoundServiceStart value)? start,
    TResult Function(SoundServiceNoteOn value)? noteOn,
    TResult Function(SoundServiceNotesOn value)? notesOn,
    TResult Function(SoundServiceNoteOff value)? noteOff,
    TResult Function(SoundServiceStop value)? stop,
    TResult Function(PauseSoundService value)? pause,
    TResult Function(ResumeSoundService value)? resume,
    TResult Function(MuteSoundService value)? mute,
    TResult Function(UnmuteSoundService value)? unmute,
    TResult Function(ResetSoundService value)? reset,
    TResult Function(SoundServiceTouch value)? touch,
    required TResult orElse(),
  }) {
    if (noteOff != null) {
      return noteOff(this);
    }
    return orElse();
  }
}

abstract class SoundServiceNoteOff implements SoundServiceEvent {
  const factory SoundServiceNoteOff(
      {required final int channel,
      required final int number,
      required final int velocity}) = _$SoundServiceNoteOffImpl;

  int get channel;
  int get number;

  /// apparently velocity is usually ignored for NoteOff
  int get velocity;
  @JsonKey(ignore: true)
  _$$SoundServiceNoteOffImplCopyWith<_$SoundServiceNoteOffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SoundServiceStopImplCopyWith<$Res> {
  factory _$$SoundServiceStopImplCopyWith(_$SoundServiceStopImpl value,
          $Res Function(_$SoundServiceStopImpl) then) =
      __$$SoundServiceStopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SoundServiceStopImplCopyWithImpl<$Res>
    extends _$SoundServiceEventCopyWithImpl<$Res, _$SoundServiceStopImpl>
    implements _$$SoundServiceStopImplCopyWith<$Res> {
  __$$SoundServiceStopImplCopyWithImpl(_$SoundServiceStopImpl _value,
      $Res Function(_$SoundServiceStopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SoundServiceStopImpl
    with DiagnosticableTreeMixin
    implements SoundServiceStop {
  const _$SoundServiceStopImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SoundServiceEvent.stop()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SoundServiceEvent.stop'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SoundServiceStopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int channel, int number, int velocity) noteOn,
    required TResult Function() notesOn,
    required TResult Function(int channel, int number, int velocity) noteOff,
    required TResult Function() stop,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() mute,
    required TResult Function() unmute,
    required TResult Function() reset,
    required TResult Function() touch,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int channel, int number, int velocity)? noteOn,
    TResult? Function()? notesOn,
    TResult? Function(int channel, int number, int velocity)? noteOff,
    TResult? Function()? stop,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? mute,
    TResult? Function()? unmute,
    TResult? Function()? reset,
    TResult? Function()? touch,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int channel, int number, int velocity)? noteOn,
    TResult Function()? notesOn,
    TResult Function(int channel, int number, int velocity)? noteOff,
    TResult Function()? stop,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? mute,
    TResult Function()? unmute,
    TResult Function()? reset,
    TResult Function()? touch,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SoundServiceStart value) start,
    required TResult Function(SoundServiceNoteOn value) noteOn,
    required TResult Function(SoundServiceNotesOn value) notesOn,
    required TResult Function(SoundServiceNoteOff value) noteOff,
    required TResult Function(SoundServiceStop value) stop,
    required TResult Function(PauseSoundService value) pause,
    required TResult Function(ResumeSoundService value) resume,
    required TResult Function(MuteSoundService value) mute,
    required TResult Function(UnmuteSoundService value) unmute,
    required TResult Function(ResetSoundService value) reset,
    required TResult Function(SoundServiceTouch value) touch,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SoundServiceStart value)? start,
    TResult? Function(SoundServiceNoteOn value)? noteOn,
    TResult? Function(SoundServiceNotesOn value)? notesOn,
    TResult? Function(SoundServiceNoteOff value)? noteOff,
    TResult? Function(SoundServiceStop value)? stop,
    TResult? Function(PauseSoundService value)? pause,
    TResult? Function(ResumeSoundService value)? resume,
    TResult? Function(MuteSoundService value)? mute,
    TResult? Function(UnmuteSoundService value)? unmute,
    TResult? Function(ResetSoundService value)? reset,
    TResult? Function(SoundServiceTouch value)? touch,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SoundServiceStart value)? start,
    TResult Function(SoundServiceNoteOn value)? noteOn,
    TResult Function(SoundServiceNotesOn value)? notesOn,
    TResult Function(SoundServiceNoteOff value)? noteOff,
    TResult Function(SoundServiceStop value)? stop,
    TResult Function(PauseSoundService value)? pause,
    TResult Function(ResumeSoundService value)? resume,
    TResult Function(MuteSoundService value)? mute,
    TResult Function(UnmuteSoundService value)? unmute,
    TResult Function(ResetSoundService value)? reset,
    TResult Function(SoundServiceTouch value)? touch,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class SoundServiceStop implements SoundServiceEvent {
  const factory SoundServiceStop() = _$SoundServiceStopImpl;
}

/// @nodoc
abstract class _$$PauseSoundServiceImplCopyWith<$Res> {
  factory _$$PauseSoundServiceImplCopyWith(_$PauseSoundServiceImpl value,
          $Res Function(_$PauseSoundServiceImpl) then) =
      __$$PauseSoundServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseSoundServiceImplCopyWithImpl<$Res>
    extends _$SoundServiceEventCopyWithImpl<$Res, _$PauseSoundServiceImpl>
    implements _$$PauseSoundServiceImplCopyWith<$Res> {
  __$$PauseSoundServiceImplCopyWithImpl(_$PauseSoundServiceImpl _value,
      $Res Function(_$PauseSoundServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PauseSoundServiceImpl
    with DiagnosticableTreeMixin
    implements PauseSoundService {
  const _$PauseSoundServiceImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SoundServiceEvent.pause()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SoundServiceEvent.pause'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseSoundServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int channel, int number, int velocity) noteOn,
    required TResult Function() notesOn,
    required TResult Function(int channel, int number, int velocity) noteOff,
    required TResult Function() stop,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() mute,
    required TResult Function() unmute,
    required TResult Function() reset,
    required TResult Function() touch,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int channel, int number, int velocity)? noteOn,
    TResult? Function()? notesOn,
    TResult? Function(int channel, int number, int velocity)? noteOff,
    TResult? Function()? stop,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? mute,
    TResult? Function()? unmute,
    TResult? Function()? reset,
    TResult? Function()? touch,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int channel, int number, int velocity)? noteOn,
    TResult Function()? notesOn,
    TResult Function(int channel, int number, int velocity)? noteOff,
    TResult Function()? stop,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? mute,
    TResult Function()? unmute,
    TResult Function()? reset,
    TResult Function()? touch,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SoundServiceStart value) start,
    required TResult Function(SoundServiceNoteOn value) noteOn,
    required TResult Function(SoundServiceNotesOn value) notesOn,
    required TResult Function(SoundServiceNoteOff value) noteOff,
    required TResult Function(SoundServiceStop value) stop,
    required TResult Function(PauseSoundService value) pause,
    required TResult Function(ResumeSoundService value) resume,
    required TResult Function(MuteSoundService value) mute,
    required TResult Function(UnmuteSoundService value) unmute,
    required TResult Function(ResetSoundService value) reset,
    required TResult Function(SoundServiceTouch value) touch,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SoundServiceStart value)? start,
    TResult? Function(SoundServiceNoteOn value)? noteOn,
    TResult? Function(SoundServiceNotesOn value)? notesOn,
    TResult? Function(SoundServiceNoteOff value)? noteOff,
    TResult? Function(SoundServiceStop value)? stop,
    TResult? Function(PauseSoundService value)? pause,
    TResult? Function(ResumeSoundService value)? resume,
    TResult? Function(MuteSoundService value)? mute,
    TResult? Function(UnmuteSoundService value)? unmute,
    TResult? Function(ResetSoundService value)? reset,
    TResult? Function(SoundServiceTouch value)? touch,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SoundServiceStart value)? start,
    TResult Function(SoundServiceNoteOn value)? noteOn,
    TResult Function(SoundServiceNotesOn value)? notesOn,
    TResult Function(SoundServiceNoteOff value)? noteOff,
    TResult Function(SoundServiceStop value)? stop,
    TResult Function(PauseSoundService value)? pause,
    TResult Function(ResumeSoundService value)? resume,
    TResult Function(MuteSoundService value)? mute,
    TResult Function(UnmuteSoundService value)? unmute,
    TResult Function(ResetSoundService value)? reset,
    TResult Function(SoundServiceTouch value)? touch,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class PauseSoundService implements SoundServiceEvent {
  const factory PauseSoundService() = _$PauseSoundServiceImpl;
}

/// @nodoc
abstract class _$$ResumeSoundServiceImplCopyWith<$Res> {
  factory _$$ResumeSoundServiceImplCopyWith(_$ResumeSoundServiceImpl value,
          $Res Function(_$ResumeSoundServiceImpl) then) =
      __$$ResumeSoundServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumeSoundServiceImplCopyWithImpl<$Res>
    extends _$SoundServiceEventCopyWithImpl<$Res, _$ResumeSoundServiceImpl>
    implements _$$ResumeSoundServiceImplCopyWith<$Res> {
  __$$ResumeSoundServiceImplCopyWithImpl(_$ResumeSoundServiceImpl _value,
      $Res Function(_$ResumeSoundServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResumeSoundServiceImpl
    with DiagnosticableTreeMixin
    implements ResumeSoundService {
  const _$ResumeSoundServiceImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SoundServiceEvent.resume()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SoundServiceEvent.resume'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResumeSoundServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int channel, int number, int velocity) noteOn,
    required TResult Function() notesOn,
    required TResult Function(int channel, int number, int velocity) noteOff,
    required TResult Function() stop,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() mute,
    required TResult Function() unmute,
    required TResult Function() reset,
    required TResult Function() touch,
  }) {
    return resume();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int channel, int number, int velocity)? noteOn,
    TResult? Function()? notesOn,
    TResult? Function(int channel, int number, int velocity)? noteOff,
    TResult? Function()? stop,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? mute,
    TResult? Function()? unmute,
    TResult? Function()? reset,
    TResult? Function()? touch,
  }) {
    return resume?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int channel, int number, int velocity)? noteOn,
    TResult Function()? notesOn,
    TResult Function(int channel, int number, int velocity)? noteOff,
    TResult Function()? stop,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? mute,
    TResult Function()? unmute,
    TResult Function()? reset,
    TResult Function()? touch,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SoundServiceStart value) start,
    required TResult Function(SoundServiceNoteOn value) noteOn,
    required TResult Function(SoundServiceNotesOn value) notesOn,
    required TResult Function(SoundServiceNoteOff value) noteOff,
    required TResult Function(SoundServiceStop value) stop,
    required TResult Function(PauseSoundService value) pause,
    required TResult Function(ResumeSoundService value) resume,
    required TResult Function(MuteSoundService value) mute,
    required TResult Function(UnmuteSoundService value) unmute,
    required TResult Function(ResetSoundService value) reset,
    required TResult Function(SoundServiceTouch value) touch,
  }) {
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SoundServiceStart value)? start,
    TResult? Function(SoundServiceNoteOn value)? noteOn,
    TResult? Function(SoundServiceNotesOn value)? notesOn,
    TResult? Function(SoundServiceNoteOff value)? noteOff,
    TResult? Function(SoundServiceStop value)? stop,
    TResult? Function(PauseSoundService value)? pause,
    TResult? Function(ResumeSoundService value)? resume,
    TResult? Function(MuteSoundService value)? mute,
    TResult? Function(UnmuteSoundService value)? unmute,
    TResult? Function(ResetSoundService value)? reset,
    TResult? Function(SoundServiceTouch value)? touch,
  }) {
    return resume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SoundServiceStart value)? start,
    TResult Function(SoundServiceNoteOn value)? noteOn,
    TResult Function(SoundServiceNotesOn value)? notesOn,
    TResult Function(SoundServiceNoteOff value)? noteOff,
    TResult Function(SoundServiceStop value)? stop,
    TResult Function(PauseSoundService value)? pause,
    TResult Function(ResumeSoundService value)? resume,
    TResult Function(MuteSoundService value)? mute,
    TResult Function(UnmuteSoundService value)? unmute,
    TResult Function(ResetSoundService value)? reset,
    TResult Function(SoundServiceTouch value)? touch,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class ResumeSoundService implements SoundServiceEvent {
  const factory ResumeSoundService() = _$ResumeSoundServiceImpl;
}

/// @nodoc
abstract class _$$MuteSoundServiceImplCopyWith<$Res> {
  factory _$$MuteSoundServiceImplCopyWith(_$MuteSoundServiceImpl value,
          $Res Function(_$MuteSoundServiceImpl) then) =
      __$$MuteSoundServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MuteSoundServiceImplCopyWithImpl<$Res>
    extends _$SoundServiceEventCopyWithImpl<$Res, _$MuteSoundServiceImpl>
    implements _$$MuteSoundServiceImplCopyWith<$Res> {
  __$$MuteSoundServiceImplCopyWithImpl(_$MuteSoundServiceImpl _value,
      $Res Function(_$MuteSoundServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MuteSoundServiceImpl
    with DiagnosticableTreeMixin
    implements MuteSoundService {
  const _$MuteSoundServiceImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SoundServiceEvent.mute()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SoundServiceEvent.mute'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MuteSoundServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int channel, int number, int velocity) noteOn,
    required TResult Function() notesOn,
    required TResult Function(int channel, int number, int velocity) noteOff,
    required TResult Function() stop,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() mute,
    required TResult Function() unmute,
    required TResult Function() reset,
    required TResult Function() touch,
  }) {
    return mute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int channel, int number, int velocity)? noteOn,
    TResult? Function()? notesOn,
    TResult? Function(int channel, int number, int velocity)? noteOff,
    TResult? Function()? stop,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? mute,
    TResult? Function()? unmute,
    TResult? Function()? reset,
    TResult? Function()? touch,
  }) {
    return mute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int channel, int number, int velocity)? noteOn,
    TResult Function()? notesOn,
    TResult Function(int channel, int number, int velocity)? noteOff,
    TResult Function()? stop,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? mute,
    TResult Function()? unmute,
    TResult Function()? reset,
    TResult Function()? touch,
    required TResult orElse(),
  }) {
    if (mute != null) {
      return mute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SoundServiceStart value) start,
    required TResult Function(SoundServiceNoteOn value) noteOn,
    required TResult Function(SoundServiceNotesOn value) notesOn,
    required TResult Function(SoundServiceNoteOff value) noteOff,
    required TResult Function(SoundServiceStop value) stop,
    required TResult Function(PauseSoundService value) pause,
    required TResult Function(ResumeSoundService value) resume,
    required TResult Function(MuteSoundService value) mute,
    required TResult Function(UnmuteSoundService value) unmute,
    required TResult Function(ResetSoundService value) reset,
    required TResult Function(SoundServiceTouch value) touch,
  }) {
    return mute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SoundServiceStart value)? start,
    TResult? Function(SoundServiceNoteOn value)? noteOn,
    TResult? Function(SoundServiceNotesOn value)? notesOn,
    TResult? Function(SoundServiceNoteOff value)? noteOff,
    TResult? Function(SoundServiceStop value)? stop,
    TResult? Function(PauseSoundService value)? pause,
    TResult? Function(ResumeSoundService value)? resume,
    TResult? Function(MuteSoundService value)? mute,
    TResult? Function(UnmuteSoundService value)? unmute,
    TResult? Function(ResetSoundService value)? reset,
    TResult? Function(SoundServiceTouch value)? touch,
  }) {
    return mute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SoundServiceStart value)? start,
    TResult Function(SoundServiceNoteOn value)? noteOn,
    TResult Function(SoundServiceNotesOn value)? notesOn,
    TResult Function(SoundServiceNoteOff value)? noteOff,
    TResult Function(SoundServiceStop value)? stop,
    TResult Function(PauseSoundService value)? pause,
    TResult Function(ResumeSoundService value)? resume,
    TResult Function(MuteSoundService value)? mute,
    TResult Function(UnmuteSoundService value)? unmute,
    TResult Function(ResetSoundService value)? reset,
    TResult Function(SoundServiceTouch value)? touch,
    required TResult orElse(),
  }) {
    if (mute != null) {
      return mute(this);
    }
    return orElse();
  }
}

abstract class MuteSoundService implements SoundServiceEvent {
  const factory MuteSoundService() = _$MuteSoundServiceImpl;
}

/// @nodoc
abstract class _$$UnmuteSoundServiceImplCopyWith<$Res> {
  factory _$$UnmuteSoundServiceImplCopyWith(_$UnmuteSoundServiceImpl value,
          $Res Function(_$UnmuteSoundServiceImpl) then) =
      __$$UnmuteSoundServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnmuteSoundServiceImplCopyWithImpl<$Res>
    extends _$SoundServiceEventCopyWithImpl<$Res, _$UnmuteSoundServiceImpl>
    implements _$$UnmuteSoundServiceImplCopyWith<$Res> {
  __$$UnmuteSoundServiceImplCopyWithImpl(_$UnmuteSoundServiceImpl _value,
      $Res Function(_$UnmuteSoundServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnmuteSoundServiceImpl
    with DiagnosticableTreeMixin
    implements UnmuteSoundService {
  const _$UnmuteSoundServiceImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SoundServiceEvent.unmute()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SoundServiceEvent.unmute'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnmuteSoundServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int channel, int number, int velocity) noteOn,
    required TResult Function() notesOn,
    required TResult Function(int channel, int number, int velocity) noteOff,
    required TResult Function() stop,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() mute,
    required TResult Function() unmute,
    required TResult Function() reset,
    required TResult Function() touch,
  }) {
    return unmute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int channel, int number, int velocity)? noteOn,
    TResult? Function()? notesOn,
    TResult? Function(int channel, int number, int velocity)? noteOff,
    TResult? Function()? stop,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? mute,
    TResult? Function()? unmute,
    TResult? Function()? reset,
    TResult? Function()? touch,
  }) {
    return unmute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int channel, int number, int velocity)? noteOn,
    TResult Function()? notesOn,
    TResult Function(int channel, int number, int velocity)? noteOff,
    TResult Function()? stop,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? mute,
    TResult Function()? unmute,
    TResult Function()? reset,
    TResult Function()? touch,
    required TResult orElse(),
  }) {
    if (unmute != null) {
      return unmute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SoundServiceStart value) start,
    required TResult Function(SoundServiceNoteOn value) noteOn,
    required TResult Function(SoundServiceNotesOn value) notesOn,
    required TResult Function(SoundServiceNoteOff value) noteOff,
    required TResult Function(SoundServiceStop value) stop,
    required TResult Function(PauseSoundService value) pause,
    required TResult Function(ResumeSoundService value) resume,
    required TResult Function(MuteSoundService value) mute,
    required TResult Function(UnmuteSoundService value) unmute,
    required TResult Function(ResetSoundService value) reset,
    required TResult Function(SoundServiceTouch value) touch,
  }) {
    return unmute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SoundServiceStart value)? start,
    TResult? Function(SoundServiceNoteOn value)? noteOn,
    TResult? Function(SoundServiceNotesOn value)? notesOn,
    TResult? Function(SoundServiceNoteOff value)? noteOff,
    TResult? Function(SoundServiceStop value)? stop,
    TResult? Function(PauseSoundService value)? pause,
    TResult? Function(ResumeSoundService value)? resume,
    TResult? Function(MuteSoundService value)? mute,
    TResult? Function(UnmuteSoundService value)? unmute,
    TResult? Function(ResetSoundService value)? reset,
    TResult? Function(SoundServiceTouch value)? touch,
  }) {
    return unmute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SoundServiceStart value)? start,
    TResult Function(SoundServiceNoteOn value)? noteOn,
    TResult Function(SoundServiceNotesOn value)? notesOn,
    TResult Function(SoundServiceNoteOff value)? noteOff,
    TResult Function(SoundServiceStop value)? stop,
    TResult Function(PauseSoundService value)? pause,
    TResult Function(ResumeSoundService value)? resume,
    TResult Function(MuteSoundService value)? mute,
    TResult Function(UnmuteSoundService value)? unmute,
    TResult Function(ResetSoundService value)? reset,
    TResult Function(SoundServiceTouch value)? touch,
    required TResult orElse(),
  }) {
    if (unmute != null) {
      return unmute(this);
    }
    return orElse();
  }
}

abstract class UnmuteSoundService implements SoundServiceEvent {
  const factory UnmuteSoundService() = _$UnmuteSoundServiceImpl;
}

/// @nodoc
abstract class _$$ResetSoundServiceImplCopyWith<$Res> {
  factory _$$ResetSoundServiceImplCopyWith(_$ResetSoundServiceImpl value,
          $Res Function(_$ResetSoundServiceImpl) then) =
      __$$ResetSoundServiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSoundServiceImplCopyWithImpl<$Res>
    extends _$SoundServiceEventCopyWithImpl<$Res, _$ResetSoundServiceImpl>
    implements _$$ResetSoundServiceImplCopyWith<$Res> {
  __$$ResetSoundServiceImplCopyWithImpl(_$ResetSoundServiceImpl _value,
      $Res Function(_$ResetSoundServiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetSoundServiceImpl
    with DiagnosticableTreeMixin
    implements ResetSoundService {
  const _$ResetSoundServiceImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SoundServiceEvent.reset()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SoundServiceEvent.reset'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetSoundServiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int channel, int number, int velocity) noteOn,
    required TResult Function() notesOn,
    required TResult Function(int channel, int number, int velocity) noteOff,
    required TResult Function() stop,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() mute,
    required TResult Function() unmute,
    required TResult Function() reset,
    required TResult Function() touch,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int channel, int number, int velocity)? noteOn,
    TResult? Function()? notesOn,
    TResult? Function(int channel, int number, int velocity)? noteOff,
    TResult? Function()? stop,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? mute,
    TResult? Function()? unmute,
    TResult? Function()? reset,
    TResult? Function()? touch,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int channel, int number, int velocity)? noteOn,
    TResult Function()? notesOn,
    TResult Function(int channel, int number, int velocity)? noteOff,
    TResult Function()? stop,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? mute,
    TResult Function()? unmute,
    TResult Function()? reset,
    TResult Function()? touch,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SoundServiceStart value) start,
    required TResult Function(SoundServiceNoteOn value) noteOn,
    required TResult Function(SoundServiceNotesOn value) notesOn,
    required TResult Function(SoundServiceNoteOff value) noteOff,
    required TResult Function(SoundServiceStop value) stop,
    required TResult Function(PauseSoundService value) pause,
    required TResult Function(ResumeSoundService value) resume,
    required TResult Function(MuteSoundService value) mute,
    required TResult Function(UnmuteSoundService value) unmute,
    required TResult Function(ResetSoundService value) reset,
    required TResult Function(SoundServiceTouch value) touch,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SoundServiceStart value)? start,
    TResult? Function(SoundServiceNoteOn value)? noteOn,
    TResult? Function(SoundServiceNotesOn value)? notesOn,
    TResult? Function(SoundServiceNoteOff value)? noteOff,
    TResult? Function(SoundServiceStop value)? stop,
    TResult? Function(PauseSoundService value)? pause,
    TResult? Function(ResumeSoundService value)? resume,
    TResult? Function(MuteSoundService value)? mute,
    TResult? Function(UnmuteSoundService value)? unmute,
    TResult? Function(ResetSoundService value)? reset,
    TResult? Function(SoundServiceTouch value)? touch,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SoundServiceStart value)? start,
    TResult Function(SoundServiceNoteOn value)? noteOn,
    TResult Function(SoundServiceNotesOn value)? notesOn,
    TResult Function(SoundServiceNoteOff value)? noteOff,
    TResult Function(SoundServiceStop value)? stop,
    TResult Function(PauseSoundService value)? pause,
    TResult Function(ResumeSoundService value)? resume,
    TResult Function(MuteSoundService value)? mute,
    TResult Function(UnmuteSoundService value)? unmute,
    TResult Function(ResetSoundService value)? reset,
    TResult Function(SoundServiceTouch value)? touch,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ResetSoundService implements SoundServiceEvent {
  const factory ResetSoundService() = _$ResetSoundServiceImpl;
}

/// @nodoc
abstract class _$$SoundServiceTouchImplCopyWith<$Res> {
  factory _$$SoundServiceTouchImplCopyWith(_$SoundServiceTouchImpl value,
          $Res Function(_$SoundServiceTouchImpl) then) =
      __$$SoundServiceTouchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SoundServiceTouchImplCopyWithImpl<$Res>
    extends _$SoundServiceEventCopyWithImpl<$Res, _$SoundServiceTouchImpl>
    implements _$$SoundServiceTouchImplCopyWith<$Res> {
  __$$SoundServiceTouchImplCopyWithImpl(_$SoundServiceTouchImpl _value,
      $Res Function(_$SoundServiceTouchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SoundServiceTouchImpl
    with DiagnosticableTreeMixin
    implements SoundServiceTouch {
  const _$SoundServiceTouchImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SoundServiceEvent.touch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SoundServiceEvent.touch'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SoundServiceTouchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int channel, int number, int velocity) noteOn,
    required TResult Function() notesOn,
    required TResult Function(int channel, int number, int velocity) noteOff,
    required TResult Function() stop,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() mute,
    required TResult Function() unmute,
    required TResult Function() reset,
    required TResult Function() touch,
  }) {
    return touch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(int channel, int number, int velocity)? noteOn,
    TResult? Function()? notesOn,
    TResult? Function(int channel, int number, int velocity)? noteOff,
    TResult? Function()? stop,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? mute,
    TResult? Function()? unmute,
    TResult? Function()? reset,
    TResult? Function()? touch,
  }) {
    return touch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int channel, int number, int velocity)? noteOn,
    TResult Function()? notesOn,
    TResult Function(int channel, int number, int velocity)? noteOff,
    TResult Function()? stop,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? mute,
    TResult Function()? unmute,
    TResult Function()? reset,
    TResult Function()? touch,
    required TResult orElse(),
  }) {
    if (touch != null) {
      return touch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SoundServiceStart value) start,
    required TResult Function(SoundServiceNoteOn value) noteOn,
    required TResult Function(SoundServiceNotesOn value) notesOn,
    required TResult Function(SoundServiceNoteOff value) noteOff,
    required TResult Function(SoundServiceStop value) stop,
    required TResult Function(PauseSoundService value) pause,
    required TResult Function(ResumeSoundService value) resume,
    required TResult Function(MuteSoundService value) mute,
    required TResult Function(UnmuteSoundService value) unmute,
    required TResult Function(ResetSoundService value) reset,
    required TResult Function(SoundServiceTouch value) touch,
  }) {
    return touch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SoundServiceStart value)? start,
    TResult? Function(SoundServiceNoteOn value)? noteOn,
    TResult? Function(SoundServiceNotesOn value)? notesOn,
    TResult? Function(SoundServiceNoteOff value)? noteOff,
    TResult? Function(SoundServiceStop value)? stop,
    TResult? Function(PauseSoundService value)? pause,
    TResult? Function(ResumeSoundService value)? resume,
    TResult? Function(MuteSoundService value)? mute,
    TResult? Function(UnmuteSoundService value)? unmute,
    TResult? Function(ResetSoundService value)? reset,
    TResult? Function(SoundServiceTouch value)? touch,
  }) {
    return touch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SoundServiceStart value)? start,
    TResult Function(SoundServiceNoteOn value)? noteOn,
    TResult Function(SoundServiceNotesOn value)? notesOn,
    TResult Function(SoundServiceNoteOff value)? noteOff,
    TResult Function(SoundServiceStop value)? stop,
    TResult Function(PauseSoundService value)? pause,
    TResult Function(ResumeSoundService value)? resume,
    TResult Function(MuteSoundService value)? mute,
    TResult Function(UnmuteSoundService value)? unmute,
    TResult Function(ResetSoundService value)? reset,
    TResult Function(SoundServiceTouch value)? touch,
    required TResult orElse(),
  }) {
    if (touch != null) {
      return touch(this);
    }
    return orElse();
  }
}

abstract class SoundServiceTouch implements SoundServiceEvent {
  const factory SoundServiceTouch() = _$SoundServiceTouchImpl;
}
