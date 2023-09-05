// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_final_project_level2/pages/qoutes.dart';
// import 'package:flutter_qoutes/main.dart';

class CardShow extends StatelessWidget {
  const CardShow(
      {super.key,
      required this.item,
      required this.deleteitem,
      required this.index});
  final BestQoutes item;
  final Function deleteitem;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Color.fromARGB(255, 82, 0, 0),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(11)),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              item.title,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    deleteitem(index);
                  },
                  icon: Icon(Icons.delete_outline_outlined,color: Colors.white,size: 30,),
                ),
                Text(
                  textDirection: TextDirection.rtl,
                  item.auther,
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 30,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
