import 'package:flutter/material.dart';
import 'package:flutter_final_project_level2/pages/initialPage.dart';
import 'package:flutter_final_project_level2/pages/pomodoro-p1.dart';
import 'package:flutter_final_project_level2/pages/pomodoro-p2.dart';
import 'package:flutter_final_project_level2/pages/qoutes.dart';
import 'package:flutter_final_project_level2/pages/stop-watch.dart';
import 'package:flutter_final_project_level2/pages/tasks.dart';
import 'package:flutter_final_project_level2/pages/verse.dart';
// import 'package:flutter_final_project_level2/pages/verse.dart';
import 'package:flutter_final_project_level2/pages/worldTime%20-home.dart';
import 'package:flutter_final_project_level2/pages/worldTime-loading%20copy.dart';
import 'package:flutter_final_project_level2/pages/worldTime-location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialPage(),
        '/tasks': (context) => const ToDOApp(),
        '/qoutes': (context) => const Qoutes(),
        '/pomodoro-p1': (context) => const Starting(),
        '/pomodoro-p2': (context) => const PomodoroApp(),
        '/stop-watch': (context) => const StopWatch(),
        '/loading': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChoiseLocation(),
        '/verse': (context) =>  Project1()
      },
    );
  }
}
