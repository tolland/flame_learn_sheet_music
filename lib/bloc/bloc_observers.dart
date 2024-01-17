import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

class CounterObserver extends BlocObserver {
  static final _log = Logger('CounterObserver');

  // @override
  // void onChange(BlocBase bloc, Change change) {
  //   super.onChange(bloc, change);
  //   _log.fine(() => '${bloc.runtimeType} $change');
  // }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    _log.fine(() => '${bloc.runtimeType} $transition');
  }
}
