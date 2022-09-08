
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'StudentList.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: ListView(
        padding: EdgeInsets.only(top:50),
        children: [
          ListTile(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (_) => Student())) ;
              // Navigator.pop(context);
              Get.back();
            },
              title: Text('Register student'), textColor: Colors.red),
          ListTile(
            onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (_) => StudentList())) ;
              Get.to(StudentList());
          },
            title: Text('List student'), textColor: Colors.red),
        ],
      ),
    );
  }

}