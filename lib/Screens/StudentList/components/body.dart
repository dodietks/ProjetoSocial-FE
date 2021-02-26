import 'package:flutter/material.dart';
import 'package:projeto_social/Screens/StudentList/components/student_tile.dart';
import 'package:projeto_social/provider/students.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.students,
  }) : super(key: key);

  final Students students;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.count,
      itemBuilder: (context, i) => StudentTile(students.byIndex(i)),
    );
  }
}
