import 'package:ProductHouse/models/user.dart';
import 'package:ProductHouse/services/user_repository.dart';
import 'package:ProductHouse/util/result.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.dart';
part 'user_event.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  /// The repository that handles the persistent information of the current user.
  final UserRepository _userRepository;

  /// Handles state related to current user of the app. Does not handle information
  /// related to other users.
  UserBloc({@required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const UserState.unauthenticated());

  /// Takes incoming user events and determines which functions should run based
  /// upon the type of event and potentially the current state of the bloc.
  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield* event.map(
      loginAnonymously: (_LoginAnonymously event) =>
          _mapLoginAnonymouslyToState(),
    );
  }

  /// Checks if the the current user already is signed in, and if so it retrieves
  /// their information from the repository. If the current user is not signed in,
  /// a new anonymous account is created.
  ///
  /// Potential outputted states are [UserState.authenticating()],
  /// [UserState.authenticationFailure()], and [UserState.authenticatedAnonymously()]
  Stream<UserState> _mapLoginAnonymouslyToState() async* {
    yield const UserState.authenticating();

    PHResult<PHUser> userResult;

    if (_userRepository.isSignedIn()) {
      userResult = await _userRepository.getUser();
    } else {
      userResult = await _userRepository.createAnonymousUser();
    }

    if (userResult.hasError) {
      yield const UserState.authenticationFailure();
    } else {
      yield UserState.authenticatedAnonymously(user: userResult.data);
    }
  }
}
