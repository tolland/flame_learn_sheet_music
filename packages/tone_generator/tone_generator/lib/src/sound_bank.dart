import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

/// A set of audio samples keyed by MIDI note number.
///
/// Load once via [load], then query raw bytes with [bytesFor].
/// Bytes are kept in memory so all voices can reference the same buffer
/// without re-reading assets.
class SoundBank {
  static final _log = Logger('SoundBank');

  final String name;

  /// MIDI note → Flutter asset path (e.g. 'packages/sound_service/assets/notes/c1.mp3')
  final Map<int, String> _assetPaths;

  final Map<int, Uint8List> _bytes = {};

  SoundBank({
    required Map<int, String> assetPaths,
    this.name = 'unnamed',
  }) : _assetPaths = Map.unmodifiable(assetPaths);

  bool get isLoaded => _bytes.isNotEmpty;

  Iterable<int> get notes => _assetPaths.keys;

  /// Returns pre-loaded bytes for [note], or null if not in this bank.
  Uint8List? bytesFor(int note) => _bytes[note];

  /// Read all asset paths into memory. Safe to call multiple times.
  Future<void> load() async {
    if (isLoaded) return;
    _log.fine('Loading "$name" (${_assetPaths.length} notes)');
    for (final entry in _assetPaths.entries) {
      final data = await rootBundle.load(entry.value);
      _bytes[entry.key] = data.buffer.asUint8List(
        data.offsetInBytes,
        data.lengthInBytes,
      );
    }
    _log.fine('"$name" loaded');
  }

  void dispose() => _bytes.clear();
}
