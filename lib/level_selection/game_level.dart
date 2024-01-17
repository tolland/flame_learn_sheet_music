import '../models/note.dart';

class GameLevel {

  final int number;
  final int difficulty;
  final String description;
  final List<Note> notes;
  /// time limit in seconds
  final double timeLimit;

  final Stream<Note> noteStream;

  /// The achievement to unlock when the level is finished, if any.
  final String? achievementIdIOS;

  final String? achievementIdAndroid;

  bool get awardsAchievement => achievementIdAndroid != null;

  const GameLevel({
    required this.number,
    required this.difficulty,
    this.timeLimit = 0,
    this.achievementIdIOS,
    this.achievementIdAndroid,
    this.description = '',
    this.notes = const [],
    //this.noteStream = Stream.periodic(const Duration(seconds: 1)),
    this.noteStream = const Stream.empty(),
  }) : assert(
            (achievementIdAndroid != null && achievementIdIOS != null) ||
                (achievementIdAndroid == null && achievementIdIOS == null),
            'Either both iOS and Android achievement ID must be provided, '
            'or none');
}
