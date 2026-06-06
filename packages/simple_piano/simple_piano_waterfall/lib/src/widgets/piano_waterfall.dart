import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:sound_service_util/main.dart';

import 'piano_waterfall_note.dart';

enum PianoWaterfallMode {
  /// Vertical layout with the first note from the top
  topToBottom, // default

  /// Vertical layout with the first note from the bottom
  bottomToTop,

  // /// Horizontal layout with the first note from the left
  // leftToRight,
  //
  // /// Horizontal layout with the first note from the right
  // rightToLeft,
}

class PianoWaterfall extends StatefulWidget {
  static final _log = Logger('PianoWaterfall');

  PianoWaterfall({
    super.key,
    required this.startPitch,
    required this.pitchCount,
    required this.notesOnStream,
    required this.notesOffStream,
    required this.onInit,
    int? animationDuration,
    PianoWaterfallMode? mode,
  })  : animationDuration = animationDuration ?? 125,
        mode = mode ?? PianoWaterfallMode.topToBottom;

  /// in web scenario this is called when the mouse enters the widget
  /// to init the AudioContext
  final Null Function() onInit;

  /// The pitch of the first note to be displayed. (in MIDI note numbers)
  final int startPitch;

  /// The number of notes to be displayed.
  final int pitchCount;

  /// length of animation frames in millis
  final int animationDuration;

  // stream of notes starting in real time.
  final Stream<int> notesOnStream;

  // stream of notes ending in real time.
  final Stream<int> notesOffStream;

  /// The mode of the waterfall up/down
  final PianoWaterfallMode mode;

  /// 4 octaves starting at C2 ending at C6
  factory PianoWaterfall.keys49c({
    Key? key, // @TODO(I don't understood what this does)
    startPitch = 36,
    pitchCount = 49, // 4 octaves plus 1 key
    int? animationDuration,
    required Stream<int> notesOnStream,
    required Stream<int> notesOffStream,
    PianoWaterfallMode? mode,
    required Null Function() onInit,
  }) {
    _log.info("using keys49c to build custom piano waterfall");
    return PianoWaterfall(
      startPitch: startPitch,
      pitchCount: pitchCount,
      key: key,
      animationDuration: animationDuration,
      notesOnStream: notesOnStream,
      notesOffStream: notesOffStream,
      mode: mode,
      onInit: onInit,
    );
  }

  @override
  State<PianoWaterfall> createState() => _PianoWaterfallState();
}

class _PianoWaterfallState extends State<PianoWaterfall>
    with SingleTickerProviderStateMixin {
  static final _log = Logger('_PianoWaterfallState');

  late final AnimationController animationController;
  int currentNoteIndex = 0;
  late final List<NoteData> notesOn = [];
  late final StreamSubscription<int> _streamOn;
  late final StreamSubscription<int> _streamOff;

  bool isWebInitialized = false;

  late int whiteCount;
  late int blackCount;
  late int startPitch = widget.startPitch;
  late int pitchCount = widget.pitchCount;

  @override
  void initState() {
    super.initState();

    whiteCount = Utils.getWhiteCount(
        widget.startPitch, widget.startPitch + widget.pitchCount - 1);
    blackCount = widget.pitchCount - whiteCount;

    _streamOn = widget.notesOnStream.listen((pitch) {
      //print("in stream on handler in piano_waterfall");
      //setState(() {
      notesOn.add(
        NoteData(
          pitch: pitch,
          tickStart: currentNoteIndex,
        ),
      );
      //});
    }, onError: (e) {
      _log.severe("error in stream on handler in piano_waterfall");
    });

    _streamOff = widget.notesOffStream.listen((pitch) {
      //setState(() {
      for (int i = 0; i < notesOn.length; i++) {
        if (notesOn[i].pitch == pitch && notesOn[i].tickEnd == -1) {
          notesOn[i].tickEnd = currentNoteIndex + 1;
        }
      }
      //});
    });
    animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: widget.animationDuration,
      ),
    );
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //if (currentNoteIndex > 1000) {
        //  _log.info("stopping due to 1000");
        //} else {
        notesOn.removeWhere((note) => note.tickStart <= currentNoteIndex - 100);
        setState(() => ++currentNoteIndex);
        animationController.forward(from: 0);
        //}
      }
    });
    animationController.forward();
  }

  double widthFactor = 0.8;
  double heightFactor = 0.2;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final isHeightBounded = constraints.maxHeight < double.infinity;
      final isWidthBounded = constraints.maxWidth < double.infinity;

      double fallbackHeight = MediaQuery.of(context).size.height * heightFactor;

      double width = widthFactor *
          (constraints.hasInfiniteWidth
              ? MediaQuery.of(context).size.width
              : constraints.maxWidth);
      double height = (isHeightBounded
          ? constraints.maxHeight
          : MediaQuery.of(context).size.height);

      return SizedBox(
        width: width,
        height: height,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Container(
              color: Colors.blue, // Set your background color here
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text('${widget.mode.name} $currentNoteIndex',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  )),
            ),
            ...getNotes(width, height),
          ],
        ),
      );
    });
  }

  List<PianoWaterfallNote> getNotes(double width, double height) {
    double whiteWidth = width / whiteCount;
    double blackWidth = whiteWidth / 2;

    List<PianoWaterfallNote> whiteNotes = notesOn
        .map((note) => note.isWhiteKey
            ? PianoWaterfallNote(
                mode: widget.mode,
                tileData: note,
                totWidth: width,
                totalHeight: height,
                currentNoteIndex: currentNoteIndex,
                whiteCount: whiteCount,
                blackCount: blackCount,
                startPitch: startPitch,
                pitchCount: pitchCount,
                whiteWidth: whiteWidth,
                blackWidth: blackWidth,
              )
            : null)
        .whereType<PianoWaterfallNote>()
        .toList();

    List<PianoWaterfallNote> blackNotes = notesOn
        .map((note) => note.isWhiteKey
            ? null
            : PianoWaterfallNote(
                mode: widget.mode,
                tileData: note,
                totWidth: width,
                totalHeight: height,
                currentNoteIndex: currentNoteIndex,
                whiteCount: whiteCount,
                blackCount: blackCount,
                startPitch: startPitch,
                pitchCount: pitchCount,
                whiteWidth: whiteWidth,
                blackWidth: blackWidth,
              ))
        .whereType<PianoWaterfallNote>()
        .toList();
    return [...whiteNotes, ...blackNotes];
  }

  @override
  void dispose() {
    _log.info("disposing");
    animationController.dispose();
    _streamOn.cancel();
    _streamOff.cancel();
    super.dispose();
  }
}
