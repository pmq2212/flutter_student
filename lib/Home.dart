import 'package:flutter/material.dart';
import 'package:fullter1/Student.dart';
import 'package:get/get.dart';
import 'Menu.dart';

class Home extends StatelessWidget{
  RxInt count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Student();
  }
}

class StudentController extends GetxController {
  List<Student> studentList = [];
}