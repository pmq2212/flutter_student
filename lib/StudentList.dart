import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fullter1/Home.dart';
import 'package:get/get.dart';
import 'Student.dart';
import 'Menu.dart';

class StudentList extends StatelessWidget {
  // late List<Student> studentList;

  @override
  Widget build(BuildContext context) {
    // var stored = <Student>[].obs;
    final controller = Get.find<StudentController>();

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
        body: DataTable(
          columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
            DataColumn(label: Text('Phone'))
          ],
          rows: controller.studentList.map(
                  (student) => DataRow(
                      cells: [
                        DataCell(
                          Text(student.name.toString())
                        ),
                        DataCell(
                            Text(student.age.toString())
                        ),
                        DataCell(
                            Text(student.phone.toString())
                        ),
                      ]
                  )
          ).toList(),

        )
      ),
    );
  }
}



