import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/screens/byte_screen.dart';
import 'package:flutter/material.dart';

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
        return MaterialPageRoute(builder: (_) => PHByteScreen(args as PHByte));
      default:
        return _errorRoute(settings);
    }
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
