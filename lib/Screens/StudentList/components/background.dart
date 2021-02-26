import 'package:flutter/material.dart';
import 'package:projeto_social/Screens/StudentList/components/body.dart';
import 'package:projeto_social/provider/students.dart';
import 'package:projeto_social/routes/app_routes.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
    @required this.students,
  }) : super(key: key);

  final Students students;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Lista de alunos",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            iconSize: 36,
            icon: Icon(
              Icons.fiber_new_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(AppRoutes.STUDENT_REGISTRATION_SCREEN);
            },
          )
        ],
      ),
      body: Body(students: students),
    );
  }
}
