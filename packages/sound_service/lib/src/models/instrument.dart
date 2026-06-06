// This file is "instrument.dart"
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/src/models/instrument.freezed.dart';
part '../../generated/src/models/instrument.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Instrument with _$Instrument {
  const factory Instrument({
    /// The name of the instrument, e.g. "Piano"
    /// must not be null and should be unique
    required String name,
    required String asset,
  }) = _Instrument;

  factory Instrument.fromJson(Map<String, Object> json) => _$InstrumentFromJson(json);
}
