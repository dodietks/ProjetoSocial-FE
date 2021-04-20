import 'package:flutter/material.dart';
import 'package:projeto_social/Screens/StudentList/components/student_tile.dart';
import 'package:projeto_social/provider/students.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  Future<void> _refreshStudents(BuildContext context) {
    return Provider.of<Students>(context, listen: false).loadStudents();
  }

  @override
  Widget build(BuildContext context) {
    final studentsData = Provider.of<Students>(context);
    final students = studentsData.items;
    return ListView.builder(
      itemCount: studentsData.count,
      itemBuilder: (context, i) => StudentTile(students[i]),
    );
  }
}
