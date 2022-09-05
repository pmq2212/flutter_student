
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: ListView(
        padding: EdgeInsets.only(top:50),
        children: [
          ListTile(onTap: (){}, title: Text('Register student')),
          ListTile(onTap: (){}, title: Text('List student')),
        ],
      ),
    );
  }

}