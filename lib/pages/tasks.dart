// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, non_constant_identifier_names

//to start any Application ,you should write the code
import 'package:flutter/material.dart';
import 'package:flutter_final_project_level2/widget/counter.dart';
import 'package:flutter_final_project_level2/widget/todocard.dart';

// import 'package:flutter_todo_app/widget/todocard.dart';

class Task {
  String title;
  bool status;
  Task({required this.title, required this.status});
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDOApp(),
      debugShowCheckedModeBanner: false,
      // color: Colors.black87,
    );
  }
}

class ToDOApp extends StatefulWidget {
  const ToDOApp({super.key});

  @override
  State<ToDOApp> createState() => _ToDOAppState();
}

class _ToDOAppState extends State<ToDOApp> {
  List allTasks = [
    Task(title: "sleep", status: false),
    Task(title: "Gym", status: false),
    Task(title: "laugh", status: true)
  ];
  changeOneStatus(int idx) {
    setState(() {
      allTasks[idx].status = !allTasks[idx].status;
    });
  }

  deleteOneItem(int idx) {
    setState(() {
      allTasks.remove(allTasks[idx]);
    });
  }

// void initstste(){}
//  String myControllar;
  final myControllar = TextEditingController();
  addNewTask() {
    setState(() {
      allTasks.add(Task(title: myControllar.text, status: false));
    });
  }

  int calculate_Completed_task() {
    int c = 0;
    for (var item in allTasks) {
      if (item.status) c++;
    }
    return c;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 2, 42, 42),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "To DO App",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  allTasks.clear();
                });
              },
              icon: Icon(
                Icons.delete_forever,
                color: Colors.redAccent,
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 255, 180, 180),
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  backgroundColor: Colors.white,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // color: Colors.white,
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: myControllar,
                          maxLength: 15,
                          decoration:
                              InputDecoration(hintText: "Enter your name"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            addNewTask();
                            Navigator.pop(context);
                          },
                          child: Text("ADD"),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            CounterApp(
                taskTrue: calculate_Completed_task(),
                tasksAll: allTasks.length),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Color.fromARGB(255, 40, 172, 187),
              //255, 40, 172, 187
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              height: 590,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(children: [
                  ...allTasks.map(
                    (e) => ToDoCard(
                      TaskTitle: e.title,
                      duneORnor: e.status,
                      changeStatus: changeOneStatus,
                      idxItem: allTasks.indexOf(e),
                      delelteItem: deleteOneItem,
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
