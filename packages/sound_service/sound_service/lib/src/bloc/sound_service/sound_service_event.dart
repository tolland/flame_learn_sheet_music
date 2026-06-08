part of 'sound_service_bloc.dart';

@freezed
class SoundServiceEvent with _$SoundServiceEvent {
  const factory SoundServiceEvent.start() = SoundServiceStart;

  ///
  /// http://midi.teragonaudio.com/tech/midispec/noteon.htm
  const factory SoundServiceEvent.noteOn({
    /// The first data byte is the channel number. There are 16 possible MIDI
    /// channels (1-16), which are numbered from 0 to 15.
    required int channel,
    /// The first data is the note number. There are 128 possible notes on
    /// a MIDI device, numbered 0 to 127 (where Middle C is note number 60).
    required int number,
    /// The second data byte is the velocity, a value from 0 to 127.
    /// velocity of 0 is equivalent to noteOff @TODO(tolland) do we implement?
    required int velocity,
  }) = SoundServiceNoteOn;

  const factory SoundServiceEvent.notesOn() = SoundServiceNotesOn;

  const factory SoundServiceEvent.noteOff({
    required int channel,
    required int number,
    /// apparently velocity is usually ignored for NoteOff
    required int velocity,
  }) = SoundServiceNoteOff;

  /// how is stop different from pause?
  const factory SoundServiceEvent.stop() = SoundServiceStop;

  const factory SoundServiceEvent.pause() = PauseSoundService;

  const factory SoundServiceEvent.resume() = ResumeSoundService;

  //const factory SoundServiceEvent.togglePause() = TogglePauseSoundService;

  const factory SoundServiceEvent.mute() = MuteSoundService;

  const factory SoundServiceEvent.unmute() = UnmuteSoundService;

  //const factory SoundServiceEvent.toggleMute() = ToggleMuteSoundService;

  const factory SoundServiceEvent.reset() = ResetSoundService;

  /// event to cause the state to be emitted
  const factory SoundServiceEvent.touch() = SoundServiceTouch;
}
