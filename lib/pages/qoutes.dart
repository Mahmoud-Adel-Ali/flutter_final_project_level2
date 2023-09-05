// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//to start any Application ,you should write the code
import 'package:flutter/material.dart';
import 'package:flutter_final_project_level2/widget/qoutesCard.dart';
// import 'package:flutter_qoutes/Cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Qoutes(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Qoutes extends StatefulWidget {
  const Qoutes({super.key});

  @override
  State<Qoutes> createState() => _QoutesState();
}

class BestQoutes {
  String title;
  String auther;
  BestQoutes({required this.auther, required this.title});
}

class _QoutesState extends State<Qoutes> {
  List allQoutes = [
    BestQoutes(auther: "mahmoud", title: "رايق من نوعة فاخر 🔥"),
    BestQoutes(auther: "ali", title: "العقل السليم في البعد عن الحريم 😂 "),
    BestQoutes(
        auther: "khaled",
        title: "كُتر التفكير فى الى ضااااع هيعمل لك فى دماغك صادااااع  😉"),
    BestQoutes(
        auther: "Ali hitham",
        title: "فرح نفسك بنفسك ومتستناش حاجة حلوة من حد  ✋ ")
  ];
  final myControllarOfName = TextEditingController();
  final myControllarOfTitle = TextEditingController();
  void deleteOneItem(int idx) {
    setState(() {
      allQoutes.remove(allQoutes[idx]);
    });
  }

  void addItem(String name1, String title1) {
    setState(() {
      allQoutes.add(BestQoutes(auther: name1, title: title1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 111, 60, 60),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(100, 193, 0, 0),
        title: Text(
          "Qoutes مقتبسات",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.redAccent),
              ),
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    context: context,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            TextField(
                              controller: myControllarOfTitle,
                              maxLength: 30,
                              decoration:
                                  InputDecoration(hintText: "write qoutes"),
                            ),
                            TextField(
                              controller: myControllarOfName,
                              maxLength: 20,
                              decoration: InputDecoration(
                                hintText: "your name",
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                addItem(myControllarOfName.text,
                                    myControllarOfTitle.text);
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Add",
                                style: TextStyle(fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: Icon(Icons.add_card)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < allQoutes.length; i++)
              CardShow(
                item: allQoutes[i],
                deleteitem: deleteOneItem,
                index: i,
              )
          ],
        ),
      ),
    );
  }
}
