import 'package:ProductHouse/cubits/read_bytes_cubit/read_bytes_cubit.dart';
import 'package:ProductHouse/home_screen.dart';
import 'package:ProductHouse/services/user_repository.dart';
import 'package:ProductHouse/splash_screen.dart';
import 'package:ProductHouse/util/theme.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'blocs/bloc_observer.dart';
import 'blocs/bookmark_bloc/bookmark_bloc.dart';
import 'blocs/user_bloc/user_bloc.dart';
import 'cubits/recent_bytes_cubit/recent_bytes_cubit.dart';
import 'services/byte_repository.dart';
import 'util/global.dart';
import 'util/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = PHBlocObserver();

  // final prefs = await SharedPreferences.getInstance();

  // if (prefs.getBool('first_run') ?? false) {
  //   print('Clearing cache');

  //   await FirebaseAuth.instance.signOut();

  //   await prefs.setBool('first_run', false);
  // }

  runApp(
    MultiBlocProvider(providers: [
      BlocProvider<UserBloc>(
        create: (context) => UserBloc(userRepository: UserRepository())
          ..add(const UserEvent.loginAnonymously()),
      ),
    ], child: PHApp()),
  );
}

class PHApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProductHouse',
      debugShowCheckedModeBanner: false,
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: PHGlobal.analytics),
      ],
      theme: lightTheme(),
      onGenerateRoute: PHRouter.generateRoute,
      home: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.when(
            unauthenticated: () => SplashScreen(),
            authenticating: () => SplashScreen(),
            authenticatedAnonymously: (user) {
              return MultiBlocProvider(providers: [
                BlocProvider(
                  create: (context) => ReadBytesCubit(
                      ByteRepository(), UserRepository(), user.read),
                ),
                BlocProvider(
                  create: (context) =>
                      BookmarkBloc(ByteRepository(), UserRepository())
                        ..add(BookmarkEvent.loadBookmarks(user.bookmarks)),
                ),
                BlocProvider(
                  create: (context) =>
                      RecentBytesCubit(ByteRepository(), UserRepository())
                        ..loadRecentBytes(user.recent),
                ),
              ], child: HomeScreen());
            },
            authenticationFailed: () => SplashScreen(),
          );
        },
      ),
    );
  }
}
