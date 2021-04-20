import 'package:flutter/material.dart';
import 'package:projeto_social/models/student.dart';
import 'package:projeto_social/provider/students.dart';
import 'package:provider/provider.dart';

class StudentRegisterScreen extends StatefulWidget {
  @override
  _StudentRegisterScreenState createState() => _StudentRegisterScreenState();
}

class _StudentRegisterScreenState extends State<StudentRegisterScreen> {
  final _form = GlobalKey<FormState>();

  final Map<Student, Student> _formData = {};

  void _getFormData(Student student) {
    if (student != null) {
      student.id as Student;
      student.name as Student;
      student.email as Student;
      student.attendance as Student;
      student.avatarUrl as Student;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final Student student = ModalRoute.of(context).settings.arguments;

    _getFormData(student);
  }

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
              final isValid = _form.currentState.validate();
              if (isValid) {
                _form.currentState.save();
                // Provider.of<Students>(context, listen: false).put(
                //   Student(
                //     id: _formData['id'],
                //     name: _formData['name'],
                //     email: _formData['email'],
                //     attendance: _formData['attendance'],
                //     avatarUrl: _formData['avatarUrl'],
                //   ),
                //);
                Navigator.of(context).pop();
              }
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue: _formData.isEmpty
                    ? "Cadastrar novo aluno"
                    : "Matrícula", // + _formData['id'],
                decoration: InputDecoration(
                  enabled: false,
                ),
              ),
              TextFormField(
                initialValue: "MUDAR",
                decoration: InputDecoration(
                  labelText: 'Nome',
                  icon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'O campo Nome é obrigatório';
                  }
                  if (value.trim().length < 3) {
                    return 'O campo Nome precisa ter mais que 3 caracteres';
                  }
                  return null;
                },
                //onSaved: (value) => _formData['name'] = value as Student,
              ),
              TextFormField(
                // initialValue: _formData['email'],
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  icon: Icon(Icons.mail),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'O campo E-mail é obrigatório';
                  }
                  if (value.trim().length < 3) {
                    return 'O campo E-mail precisa ter mais que 3 caracteres';
                  }
                  return null;
                },
                //onSaved: (value) => _formData['email'] = value as Student,
              ),
              TextFormField(
                // initialValue: _formData['attendance'],
                decoration: InputDecoration(
                  labelText: 'Presenças',
                  icon: Icon(Icons.date_range_rounded),
                ),
                //onSaved: (value) => _formData['attendance'] = value as Student,
              ),
              TextFormField(
                //initialValue: _formData['avatarUrl'],
                decoration: InputDecoration(
                  labelText: 'Foto',
                  icon: Icon(Icons.image_search),
                ),
                //onSaved: (value) => _formData['avatarUrl'] = value as Student,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
