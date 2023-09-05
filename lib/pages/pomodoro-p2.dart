// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, sort_child_properties_last, prefer_conditional_assignment, unnecessary_null_comparison

//to start any Application ,you should write the code
import 'dart:async';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PomodoroApp(),
    );
  }
}

class PomodoroApp extends StatefulWidget {
  const PomodoroApp({super.key});

  @override
  State<PomodoroApp> createState() => _PomodoroAppState();
}

class _PomodoroAppState extends State<PomodoroApp> {
  bool pomodoroIsRun = true;
  int allminutes = -1;
  int seconds = 0;
  int minutes = 25;
  double percent = 1.0;
  Timer? repeatedFunction;
  startTimer() {
    repeatedFunction = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        percent = (minutes * 60 + seconds) / (allminutes * 60.0);
        if (seconds == 0) {
          seconds = 60;
          minutes--;
        }
        seconds--;
        // minutes--;
        if (minutes == 0 && seconds == 0) {
          repeatedFunction!.cancel();
          minutes = allminutes;
          percent = 1.0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (allminutes == -1) {
      minutes = allminutes = ModalRoute.of(context)!.settings.arguments as int;
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 103, 0, 0),
      appBar: AppBar(
        title: Text(
          "Pomodoro Timer",
          style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 255, 149, 0)),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 8.0,
              percent: percent,
              center: Text(
                "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}",
                style: TextStyle(fontSize: 80, color: Colors.white),
              ),
              animation: true,
              animateFromLastPercent: true,
              animationDuration: allminutes * 60,
              progressColor: Color.fromARGB(255, 255, 149, 0),
            ),
            SizedBox(
              height: 20,
            ),
            (minutes == allminutes && seconds == 0)
                ? ElevatedButton(
                    onPressed: () {
                      startTimer();
                    },
                    child: Text(
                      "start Timer",
                      style: TextStyle(fontSize: 30),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 34, 107, 0))),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      (pomodoroIsRun)
                          ? ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  pomodoroIsRun = false;
                                  if (repeatedFunction!.isActive) {
                                    repeatedFunction!.cancel();
                                  }
                                });
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 255, 149, 0))),
                              child: Text(
                                "Stop Timer",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                            )
                          : ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  pomodoroIsRun = true;
                                  startTimer();
                                  percent = 1.0;
                                });
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromARGB(255, 0, 125, 4))),
                              child: Text(
                                "Rerun Timer",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            repeatedFunction!.cancel();
                          });
                          Navigator.pushReplacementNamed(context, '/pomodoro-p1');
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                        child: Text(
                          "    Cancel   ",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
