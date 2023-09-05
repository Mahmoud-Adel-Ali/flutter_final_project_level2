// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Starting(),
    );
  }
}

class Starting extends StatefulWidget {
  const Starting({super.key});

  @override
  State<Starting> createState() => _StartingState();
}

class _StartingState extends State<Starting> {
  final myControllar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 103, 0, 0),
      appBar: AppBar(
        title: Text(
          "Entering Number",
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
            Container(
                width: 230,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(19),
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: TextField(
                  maxLength: 2,
                  controller: myControllar,
                  decoration: InputDecoration(
                    hintText: "please enter num of minute",
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/pomodoro');
                int numOfMinute = int.parse(myControllar.text);
                // print(numOfMinute);
                Navigator.pushReplacementNamed(context, '/pomodoro-p2',
                    arguments: numOfMinute);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              child: Text(
                "Go to pomodoro timer",
                style: TextStyle(
                  fontSize: 25,
                  color: const Color.fromARGB(255, 255, 149, 0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
