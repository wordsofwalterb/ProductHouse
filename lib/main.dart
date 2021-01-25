import 'package:ProductHouse/home_screen.dart';
import 'package:ProductHouse/services/user_repository.dart';
import 'package:ProductHouse/util/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'util/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // final prefs = await SharedPreferences.getInstance();

  // if (prefs.getBool('first_run') ?? false) {
  //   print('Clearing cache');

  //   await FirebaseAuth.instance.signOut();

  //   await prefs.setBool('first_run', false);
  // }

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
