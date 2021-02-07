import 'package:ProductHouse/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/screens/byte_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_screen.dart';

/// Static Namespace for routes
class PHRoutes {
  static const String home = '/';
  static const String byteScreen = 'byteScreen';
}

/// Correlates routes names to builders
class PHRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case PHRoutes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
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
    return MaterialPageRoute(
      builder: (context) => BlocProvider.value(
        value: args.bookmarkBloc,
        child: PHByteScreen(args.byte),
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

  const ByteScreenArgs({
    @required this.bookmarkBloc,
    @required this.byte,
  });
}
