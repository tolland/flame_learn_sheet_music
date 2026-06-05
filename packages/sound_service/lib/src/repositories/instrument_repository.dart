
import 'package:sound_service/src/constants.dart';
import 'package:sound_service/src/models/models.dart';

abstract class IInstrumentRepository {
  Future<List<int>> getPitchList();
}

class InstrumentRepository implements IInstrumentRepository {
  final List<int> _pitchList = List.generate(128, (i) => i);

  @override
  Future<List<int>> getPitchList() {
    return Future.delayed(
      const Duration(seconds: 0),
      () => _pitchList,
    );
  }
}
