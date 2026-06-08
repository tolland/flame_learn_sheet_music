import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:tone_generator/tone_generator.dart';

void main() {
  Logger.root.level = Level.FINE;
  Logger.root.onRecord.listen(
      (r) => debugPrint('[${r.loggerName}] ${r.level.name}: ${r.message}'));
  runApp(const ToneGeneratorExampleApp());
}

class ToneGeneratorExampleApp extends StatelessWidget {
  const ToneGeneratorExampleApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'tone_generator demo',
        theme: ThemeData.dark(useMaterial3: true),
        home: const ToneGeneratorDemo(),
      );
}

// ---------------------------------------------------------------------------
// Demo page
// ---------------------------------------------------------------------------

class ToneGeneratorDemo extends StatefulWidget {
  const ToneGeneratorDemo({super.key});

  @override
  State<ToneGeneratorDemo> createState() => _ToneGeneratorDemoState();
}

class _ToneGeneratorDemoState extends State<ToneGeneratorDemo> {
  late final ToneGenerator _tg;
  late final StreamController<MidiMessage> _streamCtrl;
  StreamSubscription<MidiMessage>? _streamSub;

  String _status = 'Initialising…';
  bool _muted = false;

  // Notes pressed via the mini keyboard — tracked for visual feedback
  final Set<int> _held = {};

  @override
  void initState() {
    super.initState();
    _tg = ToneGeneratorFactory.create(polyphony: 16);
    _streamCtrl = StreamController<MidiMessage>.broadcast();
    _init();
  }

  Future<void> _init() async {
    try {
      await _tg.loadBank(0, StockBanks.piano());
      await _tg.init();
      _streamSub = _tg.subscribe(_streamCtrl.stream);
      setState(() => _status = 'Ready');
    } catch (e) {
      setState(() => _status = 'Error: $e');
    }
  }

  @override
  Future<void> dispose() async {
    await _streamSub?.cancel();
    await _streamCtrl.close();
    await _tg.dispose();
    super.dispose();
  }

  // ---------------------------------------------------------------------------
  // Direct note helpers

  void _noteOn(int note, {int velocity = 90}) {
    _tg.send(NoteOn(0, note, velocity));
    setState(() => _held.add(note));
  }

  void _noteOff(int note) {
    _tg.send(NoteOff(0, note));
    setState(() => _held.remove(note));
  }

  // ---------------------------------------------------------------------------
  // Stream-based sequences

  /// Plays a C major scale at the given BPM as quarter notes.
  Future<void> _playScale(int bpm) async {
    const scale = [60, 62, 64, 65, 67, 69, 71, 72]; // C4–C5
    final quarterMs = (60000 / bpm).round();
    final gateMs = (quarterMs * 0.8).round(); // 80 % gate

    for (final note in scale) {
      _streamCtrl.add(NoteOn(0, note, 90));
      await Future.delayed(Duration(milliseconds: gateMs));
      _streamCtrl.add(NoteOff(0, note));
      await Future.delayed(Duration(milliseconds: quarterMs - gateMs));
    }
  }

  /// Plays rapid sixteenth notes on C4 to stress-test latency.
  Future<void> _playRapid({int bpm = 120, int count = 32}) async {
    const note = 60;
    final sixteenthMs = (60000 / bpm / 4).round();
    final gateMs = (sixteenthMs * 0.6).round();

    for (int i = 0; i < count; i++) {
      _streamCtrl
          .add(NoteOn(0, note, 70 + (i % 4) * 10)); // slight velocity variation
      await Future.delayed(Duration(milliseconds: gateMs));
      _streamCtrl.add(NoteOff(0, note));
      await Future.delayed(Duration(milliseconds: sixteenthMs - gateMs));
    }
  }

  /// Plays two voices simultaneously to exercise polyphony.
  Future<void> _playChords() async {
    const chords = [
      [60, 64, 67], // C major
      [62, 65, 69], // D minor
      [64, 67, 71], // E minor
      [65, 69, 72], // F major
    ];
    for (final chord in chords) {
      for (final n in chord) _streamCtrl.add(NoteOn(0, n, 80));
      await Future.delayed(const Duration(milliseconds: 500));
      for (final n in chord) _streamCtrl.add(NoteOff(0, n));
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }

  // ---------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final ready = _status == 'Ready';

    return Scaffold(
      appBar: AppBar(title: const Text('tone_generator demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Status
            Row(children: [
              Icon(
                ready ? Icons.check_circle : Icons.hourglass_empty,
                color: ready ? Colors.green : Colors.orange,
              ),
              const SizedBox(width: 8),
              Text(_status),
              const Spacer(),
              const Text('Mute'),
              Switch(
                value: _muted,
                onChanged: ready
                    ? (v) {
                        _tg.muted = v;
                        setState(() => _muted = v);
                      }
                    : null,
              ),
            ]),
            const SizedBox(height: 24),

            // Mini keyboard — one octave C4–C5 (MIDI 60–72)
            const Text('Mini keyboard — hold to sustain'),
            const SizedBox(height: 8),
            _MiniKeyboard(
              startNote: 60,
              noteCount: 13,
              held: _held,
              onNoteOn: ready ? _noteOn : null,
              onNoteOff: _noteOff,
            ),
            const SizedBox(height: 24),

            // Sequence buttons
            const Text('Sequences (stream-driven)'),
            const SizedBox(height: 8),
            Wrap(spacing: 8, runSpacing: 8, children: [
              _SeqButton(
                label: 'C major scale  ♩=120',
                enabled: ready,
                onPressed: () => _playScale(120),
              ),
              _SeqButton(
                label: 'C major scale  ♩=180',
                enabled: ready,
                onPressed: () => _playScale(180),
              ),
              _SeqButton(
                label: 'Rapid 16ths  ♩=120',
                enabled: ready,
                onPressed: () => _playRapid(bpm: 120),
              ),
              _SeqButton(
                label: 'Rapid 16ths  ♩=180',
                enabled: ready,
                onPressed: () => _playRapid(bpm: 180),
              ),
              _SeqButton(
                label: 'Chord progression',
                enabled: ready,
                onPressed: _playChords,
              ),
            ]),
            const SizedBox(height: 24),

            // Panic
            OutlinedButton.icon(
              icon: const Icon(Icons.stop),
              label: const Text('All notes off'),
              onPressed: ready ? () => _tg.send(const AllNotesOff()) : null,
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Mini keyboard widget
// ---------------------------------------------------------------------------

class _MiniKeyboard extends StatelessWidget {
  final int startNote;
  final int noteCount;
  final Set<int> held;
  final void Function(int note)? onNoteOn;
  final void Function(int note) onNoteOff;

  // Which semitone offsets within an octave are black keys
  static const _blackKeyOffsets = {1, 3, 6, 8, 10};

  const _MiniKeyboard({
    required this.startNote,
    required this.noteCount,
    required this.held,
    required this.onNoteOn,
    required this.onNoteOff,
  });

  bool _isBlack(int note) => _blackKeyOffsets.contains(note % 12);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        children: [
          // White keys row
          Row(
            children: List.generate(noteCount, (i) => startNote + i)
                .where((n) => !_isBlack(n))
                .map((note) => _buildKey(note, isBlack: false))
                .toList(),
          ),
          // Black keys as Positioned widgets directly in the Stack
          ..._buildBlackKeys(),
        ],
      ),
    );
  }

  List<Widget> _buildBlackKeys() {
    final result = <Widget>[];
    double pos = 0;
    // white key width (36) + 2 * horizontal margin (1 each side)
    const whiteW = 38.0;
    const blackW = 24.0;

    for (int i = 0; i < noteCount; i++) {
      final note = startNote + i;
      if (_isBlack(note)) {
        result.add(Positioned(
          left: pos - blackW / 2,
          top: 0,
          child: _buildKey(note, isBlack: true),
        ));
      } else {
        pos += whiteW;
      }
    }
    return result;
  }

  Widget _buildKey(int note, {required bool isBlack}) {
    final isHeld = held.contains(note);
    final color = isHeld
        ? Colors.blue.shade300
        : isBlack
            ? Colors.grey.shade900
            : Colors.white;

    return GestureDetector(
      onTapDown: (_) => onNoteOn?.call(note),
      onTapUp: (_) => onNoteOff(note),
      onTapCancel: () => onNoteOff(note),
      child: Container(
        width: isBlack ? 24 : 36,
        height: isBlack ? 52 : 80,
        margin: const EdgeInsets.symmetric(horizontal: 1),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black54),
          borderRadius: const BorderRadius.vertical(bottom: Radius.circular(4)),
        ),
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.only(bottom: 4),
        child: isHeld
            ? const Icon(Icons.circle, size: 10, color: Colors.blue)
            : null,
      ),
    );
  }
}

// ---------------------------------------------------------------------------

class _SeqButton extends StatefulWidget {
  final String label;
  final bool enabled;
  final Future<void> Function() onPressed;

  const _SeqButton({
    required this.label,
    required this.enabled,
    required this.onPressed,
  });

  @override
  State<_SeqButton> createState() => _SeqButtonState();
}

class _SeqButtonState extends State<_SeqButton> {
  bool _running = false;

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: widget.enabled && !_running
          ? () async {
              setState(() => _running = true);
              await widget.onPressed();
              if (mounted) setState(() => _running = false);
            }
          : null,
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        if (_running) ...[
          const SizedBox(
            width: 14,
            height: 14,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
          const SizedBox(width: 8),
        ],
        Text(widget.label),
      ]),
    );
  }
}
