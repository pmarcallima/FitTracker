import 'package:fit_tracker/pages/tabs/home.dart';
import 'package:fit_tracker/pages/tabs/login.dart';
import 'package:fit_tracker/pages/tabs/register.dart';
import 'package:fit_tracker/pages/tabs/workouts.dart';
import 'package:flutter/material.dart';
import 'utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LoginPage(),
        '/home': (BuildContext context) => HomePage(title: 'Fit Tracker'),
        '/register': (BuildContext context) => RegisterPage(),
        '/workouts': (BuildContext context) => WorkoutsPage(),
      },
      theme: ThemeData(

        scaffoldBackgroundColor: pDarkRed,
        colorScheme: ColorScheme.fromSeed(
          seedColor: pDarkerRed,
        ),
        useMaterial3: true,
      ),
      home: HomePage(title: 'Fit Tracker'),
    );
  }
}
