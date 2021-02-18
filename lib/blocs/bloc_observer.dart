import 'package:ProductByte/util/global.dart';
import 'package:bloc/bloc.dart';

class PHBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object event) {
    super.onEvent(bloc, event);
    PHGlobal.analytics.logEvent(
      name: event.toString(),
      parameters: {
        'description': bloc.toString(),
      },
    );
    print(event);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stacktrace) {
    super.onError(cubit, error, stacktrace);
    PHGlobal.analytics.logEvent(
      name: 'Error',
      parameters: {
        'description': error.toString(),
      },
    );
    print(error);
  }

  @override
  void onTransition(
      Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}
