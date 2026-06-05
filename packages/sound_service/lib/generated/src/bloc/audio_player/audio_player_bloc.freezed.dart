// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../src/bloc/audio_player/audio_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) play,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() next,
    required TResult Function() previous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? play,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? next,
    TResult? Function()? previous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? play,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? next,
    TResult Function()? previous,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioPlayerPlay value) play,
    required TResult Function(AudioPlayerPause value) pause,
    required TResult Function(AudioPlayerResume value) resume,
    required TResult Function(AudioPlayerNext value) next,
    required TResult Function(AudioPlayerPrevious value) previous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioPlayerPlay value)? play,
    TResult? Function(AudioPlayerPause value)? pause,
    TResult? Function(AudioPlayerResume value)? resume,
    TResult? Function(AudioPlayerNext value)? next,
    TResult? Function(AudioPlayerPrevious value)? previous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioPlayerPlay value)? play,
    TResult Function(AudioPlayerPause value)? pause,
    TResult Function(AudioPlayerResume value)? resume,
    TResult Function(AudioPlayerNext value)? next,
    TResult Function(AudioPlayerPrevious value)? previous,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayerEventCopyWith<$Res> {
  factory $AudioPlayerEventCopyWith(
          AudioPlayerEvent value, $Res Function(AudioPlayerEvent) then) =
      _$AudioPlayerEventCopyWithImpl<$Res, AudioPlayerEvent>;
}

/// @nodoc
class _$AudioPlayerEventCopyWithImpl<$Res, $Val extends AudioPlayerEvent>
    implements $AudioPlayerEventCopyWith<$Res> {
  _$AudioPlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AudioPlayerPlayImplCopyWith<$Res> {
  factory _$$AudioPlayerPlayImplCopyWith(_$AudioPlayerPlayImpl value,
          $Res Function(_$AudioPlayerPlayImpl) then) =
      __$$AudioPlayerPlayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$AudioPlayerPlayImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$AudioPlayerPlayImpl>
    implements _$$AudioPlayerPlayImplCopyWith<$Res> {
  __$$AudioPlayerPlayImplCopyWithImpl(
      _$AudioPlayerPlayImpl _value, $Res Function(_$AudioPlayerPlayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$AudioPlayerPlayImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AudioPlayerPlayImpl
    with DiagnosticableTreeMixin
    implements AudioPlayerPlay {
  const _$AudioPlayerPlayImpl({this.index = 0});

  @override
  @JsonKey()
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.play(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioPlayerEvent.play'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPlayerPlayImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioPlayerPlayImplCopyWith<_$AudioPlayerPlayImpl> get copyWith =>
      __$$AudioPlayerPlayImplCopyWithImpl<_$AudioPlayerPlayImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) play,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() next,
    required TResult Function() previous,
  }) {
    return play(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? play,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? next,
    TResult? Function()? previous,
  }) {
    return play?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? play,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? next,
    TResult Function()? previous,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioPlayerPlay value) play,
    required TResult Function(AudioPlayerPause value) pause,
    required TResult Function(AudioPlayerResume value) resume,
    required TResult Function(AudioPlayerNext value) next,
    required TResult Function(AudioPlayerPrevious value) previous,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioPlayerPlay value)? play,
    TResult? Function(AudioPlayerPause value)? pause,
    TResult? Function(AudioPlayerResume value)? resume,
    TResult? Function(AudioPlayerNext value)? next,
    TResult? Function(AudioPlayerPrevious value)? previous,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioPlayerPlay value)? play,
    TResult Function(AudioPlayerPause value)? pause,
    TResult Function(AudioPlayerResume value)? resume,
    TResult Function(AudioPlayerNext value)? next,
    TResult Function(AudioPlayerPrevious value)? previous,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class AudioPlayerPlay implements AudioPlayerEvent {
  const factory AudioPlayerPlay({final int index}) = _$AudioPlayerPlayImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$AudioPlayerPlayImplCopyWith<_$AudioPlayerPlayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AudioPlayerPauseImplCopyWith<$Res> {
  factory _$$AudioPlayerPauseImplCopyWith(_$AudioPlayerPauseImpl value,
          $Res Function(_$AudioPlayerPauseImpl) then) =
      __$$AudioPlayerPauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioPlayerPauseImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$AudioPlayerPauseImpl>
    implements _$$AudioPlayerPauseImplCopyWith<$Res> {
  __$$AudioPlayerPauseImplCopyWithImpl(_$AudioPlayerPauseImpl _value,
      $Res Function(_$AudioPlayerPauseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioPlayerPauseImpl
    with DiagnosticableTreeMixin
    implements AudioPlayerPause {
  const _$AudioPlayerPauseImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.pause()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AudioPlayerEvent.pause'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioPlayerPauseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) play,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() next,
    required TResult Function() previous,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? play,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? next,
    TResult? Function()? previous,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? play,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? next,
    TResult Function()? previous,
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
    required TResult Function(AudioPlayerPlay value) play,
    required TResult Function(AudioPlayerPause value) pause,
    required TResult Function(AudioPlayerResume value) resume,
    required TResult Function(AudioPlayerNext value) next,
    required TResult Function(AudioPlayerPrevious value) previous,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioPlayerPlay value)? play,
    TResult? Function(AudioPlayerPause value)? pause,
    TResult? Function(AudioPlayerResume value)? resume,
    TResult? Function(AudioPlayerNext value)? next,
    TResult? Function(AudioPlayerPrevious value)? previous,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioPlayerPlay value)? play,
    TResult Function(AudioPlayerPause value)? pause,
    TResult Function(AudioPlayerResume value)? resume,
    TResult Function(AudioPlayerNext value)? next,
    TResult Function(AudioPlayerPrevious value)? previous,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class AudioPlayerPause implements AudioPlayerEvent {
  const factory AudioPlayerPause() = _$AudioPlayerPauseImpl;
}

/// @nodoc
abstract class _$$AudioPlayerResumeImplCopyWith<$Res> {
  factory _$$AudioPlayerResumeImplCopyWith(_$AudioPlayerResumeImpl value,
          $Res Function(_$AudioPlayerResumeImpl) then) =
      __$$AudioPlayerResumeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioPlayerResumeImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$AudioPlayerResumeImpl>
    implements _$$AudioPlayerResumeImplCopyWith<$Res> {
  __$$AudioPlayerResumeImplCopyWithImpl(_$AudioPlayerResumeImpl _value,
      $Res Function(_$AudioPlayerResumeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioPlayerResumeImpl
    with DiagnosticableTreeMixin
    implements AudioPlayerResume {
  const _$AudioPlayerResumeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.resume()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AudioPlayerEvent.resume'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioPlayerResumeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) play,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() next,
    required TResult Function() previous,
  }) {
    return resume();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? play,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? next,
    TResult? Function()? previous,
  }) {
    return resume?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? play,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? next,
    TResult Function()? previous,
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
    required TResult Function(AudioPlayerPlay value) play,
    required TResult Function(AudioPlayerPause value) pause,
    required TResult Function(AudioPlayerResume value) resume,
    required TResult Function(AudioPlayerNext value) next,
    required TResult Function(AudioPlayerPrevious value) previous,
  }) {
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioPlayerPlay value)? play,
    TResult? Function(AudioPlayerPause value)? pause,
    TResult? Function(AudioPlayerResume value)? resume,
    TResult? Function(AudioPlayerNext value)? next,
    TResult? Function(AudioPlayerPrevious value)? previous,
  }) {
    return resume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioPlayerPlay value)? play,
    TResult Function(AudioPlayerPause value)? pause,
    TResult Function(AudioPlayerResume value)? resume,
    TResult Function(AudioPlayerNext value)? next,
    TResult Function(AudioPlayerPrevious value)? previous,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class AudioPlayerResume implements AudioPlayerEvent {
  const factory AudioPlayerResume() = _$AudioPlayerResumeImpl;
}

/// @nodoc
abstract class _$$AudioPlayerNextImplCopyWith<$Res> {
  factory _$$AudioPlayerNextImplCopyWith(_$AudioPlayerNextImpl value,
          $Res Function(_$AudioPlayerNextImpl) then) =
      __$$AudioPlayerNextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioPlayerNextImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$AudioPlayerNextImpl>
    implements _$$AudioPlayerNextImplCopyWith<$Res> {
  __$$AudioPlayerNextImplCopyWithImpl(
      _$AudioPlayerNextImpl _value, $Res Function(_$AudioPlayerNextImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioPlayerNextImpl
    with DiagnosticableTreeMixin
    implements AudioPlayerNext {
  const _$AudioPlayerNextImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.next()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AudioPlayerEvent.next'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioPlayerNextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) play,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() next,
    required TResult Function() previous,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? play,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? next,
    TResult? Function()? previous,
  }) {
    return next?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? play,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? next,
    TResult Function()? previous,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioPlayerPlay value) play,
    required TResult Function(AudioPlayerPause value) pause,
    required TResult Function(AudioPlayerResume value) resume,
    required TResult Function(AudioPlayerNext value) next,
    required TResult Function(AudioPlayerPrevious value) previous,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioPlayerPlay value)? play,
    TResult? Function(AudioPlayerPause value)? pause,
    TResult? Function(AudioPlayerResume value)? resume,
    TResult? Function(AudioPlayerNext value)? next,
    TResult? Function(AudioPlayerPrevious value)? previous,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioPlayerPlay value)? play,
    TResult Function(AudioPlayerPause value)? pause,
    TResult Function(AudioPlayerResume value)? resume,
    TResult Function(AudioPlayerNext value)? next,
    TResult Function(AudioPlayerPrevious value)? previous,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class AudioPlayerNext implements AudioPlayerEvent {
  const factory AudioPlayerNext() = _$AudioPlayerNextImpl;
}

/// @nodoc
abstract class _$$AudioPlayerPreviousImplCopyWith<$Res> {
  factory _$$AudioPlayerPreviousImplCopyWith(_$AudioPlayerPreviousImpl value,
          $Res Function(_$AudioPlayerPreviousImpl) then) =
      __$$AudioPlayerPreviousImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioPlayerPreviousImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$AudioPlayerPreviousImpl>
    implements _$$AudioPlayerPreviousImplCopyWith<$Res> {
  __$$AudioPlayerPreviousImplCopyWithImpl(_$AudioPlayerPreviousImpl _value,
      $Res Function(_$AudioPlayerPreviousImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioPlayerPreviousImpl
    with DiagnosticableTreeMixin
    implements AudioPlayerPrevious {
  const _$AudioPlayerPreviousImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.previous()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AudioPlayerEvent.previous'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPlayerPreviousImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) play,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() next,
    required TResult Function() previous,
  }) {
    return previous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? play,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? next,
    TResult? Function()? previous,
  }) {
    return previous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? play,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? next,
    TResult Function()? previous,
    required TResult orElse(),
  }) {
    if (previous != null) {
      return previous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioPlayerPlay value) play,
    required TResult Function(AudioPlayerPause value) pause,
    required TResult Function(AudioPlayerResume value) resume,
    required TResult Function(AudioPlayerNext value) next,
    required TResult Function(AudioPlayerPrevious value) previous,
  }) {
    return previous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioPlayerPlay value)? play,
    TResult? Function(AudioPlayerPause value)? pause,
    TResult? Function(AudioPlayerResume value)? resume,
    TResult? Function(AudioPlayerNext value)? next,
    TResult? Function(AudioPlayerPrevious value)? previous,
  }) {
    return previous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioPlayerPlay value)? play,
    TResult Function(AudioPlayerPause value)? pause,
    TResult Function(AudioPlayerResume value)? resume,
    TResult Function(AudioPlayerNext value)? next,
    TResult Function(AudioPlayerPrevious value)? previous,
    required TResult orElse(),
  }) {
    if (previous != null) {
      return previous(this);
    }
    return orElse();
  }
}

abstract class AudioPlayerPrevious implements AudioPlayerEvent {
  const factory AudioPlayerPrevious() = _$AudioPlayerPreviousImpl;
}

/// @nodoc
mixin _$AudioPlayerState {
  PlayerStatus get status => throw _privateConstructorUsedError;
  Playlist get playlist => throw _privateConstructorUsedError;
  Duration get currentTime => throw _privateConstructorUsedError;
  int get currentTrackIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioPlayerStateCopyWith<AudioPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayerStateCopyWith<$Res> {
  factory $AudioPlayerStateCopyWith(
          AudioPlayerState value, $Res Function(AudioPlayerState) then) =
      _$AudioPlayerStateCopyWithImpl<$Res, AudioPlayerState>;
  @useResult
  $Res call(
      {PlayerStatus status,
      Playlist playlist,
      Duration currentTime,
      int currentTrackIndex});
}

/// @nodoc
class _$AudioPlayerStateCopyWithImpl<$Res, $Val extends AudioPlayerState>
    implements $AudioPlayerStateCopyWith<$Res> {
  _$AudioPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? playlist = null,
    Object? currentTime = null,
    Object? currentTrackIndex = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlayerStatus,
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as Playlist,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as Duration,
      currentTrackIndex: null == currentTrackIndex
          ? _value.currentTrackIndex
          : currentTrackIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioPlayerStateInitialImplCopyWith<$Res>
    implements $AudioPlayerStateCopyWith<$Res> {
  factory _$$AudioPlayerStateInitialImplCopyWith(
          _$AudioPlayerStateInitialImpl value,
          $Res Function(_$AudioPlayerStateInitialImpl) then) =
      __$$AudioPlayerStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlayerStatus status,
      Playlist playlist,
      Duration currentTime,
      int currentTrackIndex});
}

/// @nodoc
class __$$AudioPlayerStateInitialImplCopyWithImpl<$Res>
    extends _$AudioPlayerStateCopyWithImpl<$Res, _$AudioPlayerStateInitialImpl>
    implements _$$AudioPlayerStateInitialImplCopyWith<$Res> {
  __$$AudioPlayerStateInitialImplCopyWithImpl(
      _$AudioPlayerStateInitialImpl _value,
      $Res Function(_$AudioPlayerStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? playlist = null,
    Object? currentTime = null,
    Object? currentTrackIndex = null,
  }) {
    return _then(_$AudioPlayerStateInitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlayerStatus,
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as Playlist,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as Duration,
      currentTrackIndex: null == currentTrackIndex
          ? _value.currentTrackIndex
          : currentTrackIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AudioPlayerStateInitialImpl
    with DiagnosticableTreeMixin
    implements AudioPlayerStateInitial {
  const _$AudioPlayerStateInitialImpl(
      {this.status = PlayerStatus.initial,
      this.playlist = const Playlist(name: '', tracks: []),
      this.currentTime = Duration.zero,
      this.currentTrackIndex = 0});

  @override
  @JsonKey()
  final PlayerStatus status;
  @override
  @JsonKey()
  final Playlist playlist;
  @override
  @JsonKey()
  final Duration currentTime;
  @override
  @JsonKey()
  final int currentTrackIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerState(status: $status, playlist: $playlist, currentTime: $currentTime, currentTrackIndex: $currentTrackIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioPlayerState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('playlist', playlist))
      ..add(DiagnosticsProperty('currentTime', currentTime))
      ..add(DiagnosticsProperty('currentTrackIndex', currentTrackIndex));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPlayerStateInitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist) &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.currentTrackIndex, currentTrackIndex) ||
                other.currentTrackIndex == currentTrackIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, playlist, currentTime, currentTrackIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioPlayerStateInitialImplCopyWith<_$AudioPlayerStateInitialImpl>
      get copyWith => __$$AudioPlayerStateInitialImplCopyWithImpl<
          _$AudioPlayerStateInitialImpl>(this, _$identity);
}

abstract class AudioPlayerStateInitial implements AudioPlayerState {
  const factory AudioPlayerStateInitial(
      {final PlayerStatus status,
      final Playlist playlist,
      final Duration currentTime,
      final int currentTrackIndex}) = _$AudioPlayerStateInitialImpl;

  @override
  PlayerStatus get status;
  @override
  Playlist get playlist;
  @override
  Duration get currentTime;
  @override
  int get currentTrackIndex;
  @override
  @JsonKey(ignore: true)
  _$$AudioPlayerStateInitialImplCopyWith<_$AudioPlayerStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
