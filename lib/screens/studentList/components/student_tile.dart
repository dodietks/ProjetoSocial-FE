import 'dart:io';

import 'package:flutter/material.dart';
import 'package:projeto_social/models/student.dart';
import 'package:projeto_social/provider/students.dart';
import 'package:projeto_social/routes/app_routes.dart';
import 'package:provider/provider.dart';

class StudentTile extends StatelessWidget {
  final Student student;

  const StudentTile(this.student);
  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold.of(context);
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(student.avatarUrl),
      ),
      title: Text(student.name),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.of(context).pushNamed(
                    AppRoutes.STUDENT_REGISTRATION_SCREEN,
                    arguments: student);
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Theme.of(context).errorColor,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Excluir Produto'),
                    content: Text('Tem certeza?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: Text('Não'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: Text('Sim'),
                      ),
                    ],
                  ),
                ).then((value) async {
                  if (value) {
                    try {
                      await Provider.of<Students>(context, listen: false)
                          .deleteStudent(student.id);
                    } on HttpException catch (error) {
                      // ignore: deprecated_member_use
                      scaffold.showSnackBar(
                        SnackBar(
                          content: Text(error.toString()),
                        ),
                      );
                    }
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
