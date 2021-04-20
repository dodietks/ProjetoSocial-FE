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
    final avatar = student.avatarUrl == null || student.avatarUrl.isEmpty
        ? CircleAvatar(
            child: Icon(Icons.face),
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(student.avatarUrl),
          );
    return ListTile(
      leading: avatar,
      title: Text(student.name),
      subtitle: Container(
        child: Row(
          children: <Widget>[
            Text("Presenças: "),
            IconButton(
              icon: Icon(Icons.add_box),
              color: Colors.amber,
              iconSize: 20,
              onPressed: () {
                // Provider.of<Students>(context, listen: false).put(
                //   Student(
                //       //attendance: plus ,
                //       ),
                // );
              },
            ),
          ],
        ),
      ),
      trailing: Container(
        width: 96,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.STUDENT_REGISTRATION_SCREEN,
                  arguments: student,
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.delete,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Excluir aluno?'),
                    content: Text('Você Gostaria de Excluir o usuário ' +
                        student.name +
                        '?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text('Cancelar'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text('Confirmar'),
                      ),
                    ],
                  ),
                ).then(
                  (confirmed) {
                    if (confirmed) {
                      // Provider.of<Students>(context, listen: false)
                      //     .remove(student);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
