import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

class DebugBlocObserver extends BlocObserver {
  static final _log = Logger('DebugBlocObserver');

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _log.finest(() => '${bloc.runtimeType} $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    _log.fine(() => '${bloc.runtimeType} $transition');
  }
}
