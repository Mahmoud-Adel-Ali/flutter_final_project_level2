// ignore_for_file: prefer_const_constructors

//to start any Application ,you should write the code
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InitialPage(),
    );
  }
}

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 220, 216),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text(
          "choise any one page👌",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 70,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 162, 8, 0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,'/verse');
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              ),
              child: Text(
                "Verses",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          
          Container(
            width: double.infinity,
            height: 70,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 162, 8, 0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,'/stop-watch');
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              ),
              child: Text(
                "Stop Watch",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 162, 8, 0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pomodoro-p1');
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              ),
              child: Text(
                "Pomodoro Timer",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 162, 8, 0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/qoutes');
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              ),
              child: Text(
                "Qoutes",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 162, 8, 0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tasks');
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              ),
              child: Text(
                "Tasks",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 162, 8, 0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loading');
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              ),
              child: Text(
                "World Timer",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
