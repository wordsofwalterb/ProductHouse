import 'package:ProductHouse/home_screen.dart';
import 'package:ProductHouse/util/theme.dart';
import 'package:flutter/material.dart';

import 'util/router.dart';

void main() {
  runApp(PHApp());
}

class PHApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProductHouse',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      onGenerateRoute: PHRouter.generateRoute,
      home: HomeScreen(),
    );
  }
}
