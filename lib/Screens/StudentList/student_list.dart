import 'package:flutter/material.dart';
import 'package:projeto_social/Screens/StudentList/components/background.dart';
import 'package:projeto_social/Screens/provider/students.dart';
import 'package:provider/provider.dart';

class StudentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Students students = Provider.of(context);

    return Background(students: students);
  }
}
