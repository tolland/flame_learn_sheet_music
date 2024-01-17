import 'package:note_sequence/model/part.dart';

class Score {
  final String? id;
  final String? title;
  final String? description;

  List<Part> parts;

  Score({
    this.id,
    this.title,
    this.description,
    List<Part>? parts,
  }) : parts = parts ?? [] {
    if(this.parts.isEmpty) addPart(Part());
  }

  Part addPart(Part part) {
    parts?.add(part);
    return part;
  }

  int get measuresCount {
    var maxCount = 0;
    for (var part in parts) {
      if(part.measures.length> maxCount) maxCount = part.measures.length;
    }
    return maxCount;
  }

  @override
  String toString() {
    return '''
    Score:
      id: $id
      title: $title
      description: $description
    parts: (${parts.length})
      $parts
    ''';
  }
}
