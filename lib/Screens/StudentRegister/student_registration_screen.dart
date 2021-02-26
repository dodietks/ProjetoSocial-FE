import 'package:flutter/material.dart';

class StudentRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cadastro de alunos',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            iconSize: 36,
            icon: Icon(
              Icons.done_all,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
