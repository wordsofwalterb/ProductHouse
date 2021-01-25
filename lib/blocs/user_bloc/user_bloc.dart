import 'package:ProductHouse/models/user.dart';
import 'package:ProductHouse/services/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.dart';
part 'user_event.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc({@required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const UserState.unauthenticated());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield* event.map(
      loginAnonymously: (_LoginAnonymously event) =>
          _mapLoginAnonymouslyToState(),
    );
  }

  Stream<UserState> _mapLoginAnonymouslyToState() async* {
    if (await _userRepository.isSignedIn()) {
      final PHUser currentUser = await _userRepository.getUser();

      yield UserState.authenticatedAnonymously(user: currentUser);
    } else {
      yield const UserState.authenticationFailure();
    }
  }
}
