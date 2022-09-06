import 'dart:html';

import 'package:flutter/material.dart';
import 'Student.dart';
import 'Menu.dart';

class StudentList extends StatelessWidget {
  late List<Student> studentList;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List student",

      home: Scaffold(
        appBar: AppBar(
          title: Text('Student list'),
          // leading: Builder(
          //   builder: (context) => IconButton(
          //       onPressed: () {
          //         Scaffold.of(context).openDrawer();
          //       },
          //       icon: Icon(Icons.settings)),
          // )
        ),
        endDrawer: Drawer(
            child: Menu()
        ),
        body: Column(
          children: [
            Text('dataaaaaaaaa'),
          ],
        ),
      ),
    );
  }
}



