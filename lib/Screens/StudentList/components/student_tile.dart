import 'package:flutter/material.dart';
import 'package:projeto_social/models/student.dart';

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
            Text(student.attendance),
            IconButton(
              icon: Icon(Icons.add_box),
              color: Colors.amber,
              iconSize: 20,
              onPressed: () {},
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
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.delete,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
