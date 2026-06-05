
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part '../../generated/src/models/midi_message.freezed.dart';
//part 'midi_message.g.dart';

/// https://www.midi.org/midi-articles/about-midi-part-3-midi-messages
@freezed
class MidiMessage with _$MidiMessage {
  const factory MidiMessage({
    required int channel,
    required int command,
    required int keyNumber,
    required int velocity,
  }) = _MidiMessage;
}
