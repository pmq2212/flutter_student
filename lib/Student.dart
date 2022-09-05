import 'dart:html';

import 'package:flutter/material.dart';
import 'Menu.dart';

class Student extends StatefulWidget {
  late String name='';
  late int age=0;
  late String email='';
  late String phone='';
  late String address='';

  @override
  State<StatefulWidget> createState() {
   return _StudentState();
  }
}

class _StudentState extends State<Student> {
  String _name = '';
  int _age = 0;
  String _email = '';
  String _phone = '';
  String _address = '';
  final nameEditingController = TextEditingController();
  final ageEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final phoneEditingController = TextEditingController();
  final addressEditingController = TextEditingController();
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
                this.setState(() {
                  _name = text;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input name'
              ),
            ),
            TextField(
              controller: ageEditingController,
              onChanged: (text){
                this.setState(() {
                  _age = text as int;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input age'
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                child: TextField(
                  controller: emailEditingController,
                  onChanged: (text){
                    this.setState(() {
                      _email = text;
                    });
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Input email'
                ),
              )
            ),
            Text(_name),
            // Text("${widget.age}"),
            // Text(_email),
            // Text(widget.phone),
            OutlinedButton(
              child: Text('Register'),
              onPressed: () {  },
            ),
          ],
        ),
      ),
    );
  }
}

