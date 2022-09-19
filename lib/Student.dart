import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fullter1/Home.dart';
import 'package:get/get.dart';
import 'Menu.dart';

class Student extends StatefulWidget {
  late String? name;
  late int? age;
  late String? email;
  late String? phone;
  late String? address;

  Student({Key? key, this.name, this.age, this.email, this.phone, this.address}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
   return _StudentState();
  }
}

class _StudentState extends State<Student> {
  String? _name;
  String? _age;
  String? _email;
  String? _phone;
  String? _address;
  final nameEditingController = TextEditingController();
  final ageEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final phoneEditingController = TextEditingController();
  final addressEditingController = TextEditingController();
  final controller = Get.find<StudentController>();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Register a student',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Header'),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameEditingController,
              onChanged: (text){
                setState(() {
                  _name = text;
                });
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input name'
              ),
            ),
            TextField(
              controller: ageEditingController,
              onChanged: (t){
                setState(() {
                  _age = t;
                });
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input age'
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                child: TextField(
                  controller: emailEditingController,
                  onChanged: (text){
                    setState(() {
                      _email = text;
                    });
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Input email'
                ),
              )
            ),
            Text(_name.toString()),
            // Text("${widget.age}"),
            // Text(_email),
            // Text(widget.phone),
            OutlinedButton(
              child: Text('Register'),
              onPressed: () {
                controller.updateStudent(
                    Student(
                  name: _name,
                  age: int.parse(_age!),
                  email: _email,
                  phone: _phone,
                  address: _address
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

