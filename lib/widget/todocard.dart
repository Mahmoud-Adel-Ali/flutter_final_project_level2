// ignore_for_file: unused_import, non_constant_identifier_names, prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unused_element

import 'package:flutter/material.dart';

class ToDoCard extends StatelessWidget {
  final String TaskTitle;
  final bool duneORnor;
  final Function changeStatus;
  final int idxItem;
  final Function delelteItem;
  // const ToDoCard({super.key, required this.TaskTitle, required this.duneORnor});
  ToDoCard({
    required this.TaskTitle,
    required this.duneORnor,
    required this.changeStatus,
    required this.delelteItem,
    required this.idxItem,
  });
   
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeStatus(idxItem);
      },
      child: FractionallySizedBox(
        widthFactor: 0.97,
        
        child: Container(
          // color: Colors.red,
          height: 60,
          width: double.infinity,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                // duneORnor?:;
                TaskTitle,

                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: duneORnor
                      ? TextDecoration.lineThrough
                      : TextDecoration.underline,
                  fontSize: 22,
                  color: !duneORnor ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                children: [
                  Icon(
                    !duneORnor ? Icons.close : Icons.check,
                    color: !duneORnor ? Colors.red : Colors.green,
                    size: 25,
                  ),
                  IconButton(
                      onPressed: () {
                        delelteItem(idxItem);
                      },
                      icon: Icon(Icons.delete,color: const Color.fromARGB(255, 255, 170, 170),))
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            // border: Border.all()
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(96, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
