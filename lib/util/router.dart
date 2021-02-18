import 'package:ProductByte/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductByte/cubits/read_bytes_cubit/read_bytes_cubit.dart';
import 'package:ProductByte/cubits/recent_bytes_cubit/recent_bytes_cubit.dart';
import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/screens/byte_screen.dart';
import 'package:ProductByte/screens/profile_screen.dart';
import 'package:ProductByte/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_screen.dart';

/// Static Namespace for routes
class PHRoutes {
  static const String home = '/';
  static const String byteScreen = 'byteScreen';
  static const String searchScreen = 'searchScreen';
  static const String profileScreen = 'profileScreen';
}

/// Correlates routes names to builders
class PHRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case PHRoutes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case PHRoutes.profileScreen:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case PHRoutes.searchScreen:
        if (args is SearchScreenArgs) {
          return _searchScreenRoute(args);
        }
        throw Exception('Invalid arguments for ${settings.name}');
        break;
      case PHRoutes.byteScreen:
        if (args is ByteScreenArgs) {
          return _byteScreenRoute(args);
        }
        throw Exception('Invalid arguments for ${settings.name}');
        break;

      default:
        return _errorRoute(settings);
    }
  }

  static Route<dynamic> _byteScreenRoute(ByteScreenArgs args) {
    args.recentsCubit.updateRecents(args.byte);
    return MaterialPageRoute(
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider.value(value: args.bookmarkBloc),
          BlocProvider.value(value: args.readBytesCubit),
        ],
        child: PHByteScreen(args.byte),
      ),
    );
  }

  static Route<dynamic> _searchScreenRoute(SearchScreenArgs args) {
    return MaterialPageRoute(
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider.value(value: args.bookmarkBloc),
          BlocProvider.value(value: args.recentsCubit),
          BlocProvider.value(value: args.readBytesCubit),
        ],
        child: SearchScreen(),
      ),
    );
  }

// Moved route generation to this section for brevity in previous section

  static Route<dynamic> _errorRoute(dynamic settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(child: Text('No route defined for ${settings.name}')),
      ),
    );
  }
}

//Arguement Classes
class ByteScreenArgs {
  final BookmarkBloc bookmarkBloc;
  final PHByte byte;
  final RecentBytesCubit recentsCubit;
  final ReadBytesCubit readBytesCubit;

  const ByteScreenArgs({
    @required this.bookmarkBloc,
    @required this.byte,
    @required this.recentsCubit,
    @required this.readBytesCubit,
  });
}

class SearchScreenArgs {
  final BookmarkBloc bookmarkBloc;
  final RecentBytesCubit recentsCubit;
  final ReadBytesCubit readBytesCubit;

  const SearchScreenArgs({
    @required this.bookmarkBloc,
    @required this.recentsCubit,
    @required this.readBytesCubit,
  });
}
