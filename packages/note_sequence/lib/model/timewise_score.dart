import 'package:note_sequence/model/part.dart';

import 'measure.dart';

class TimewiseScore {
  final String? id;
  final String? title;
  final String? description;

  List<Measure> measures;

  TimewiseScore({
    this.id,
    this.title,
    this.description,
    List<Measure>? measures,
  }) : measures = measures ?? [] {
    if(this.measures.isEmpty) addMeasure(Measure());
  }

  Measure addMeasure(Measure measure) {
    measures?.add(measure);
    return measure;
  }

  @override
  String toString() {
    return '''
    Score:
      id: $id
      title: $title
      description: $description
    measures: (${measures.length})
      $measures
    ''';
  }
}
