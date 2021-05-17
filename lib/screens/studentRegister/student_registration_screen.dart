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

  final _formData = Map<String, Object>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_formData.isEmpty) {
      final student = ModalRoute.of(context)!.settings.arguments as Student;

      // ignore: unnecessary_null_comparison
      if (student != null) {
        _formData['id'] = student.id;
        _formData['name'] = student.name;
        _formData['gender'] = student.gender;
        _formData['email'] = student.email;
        _formData['attendance'] = student.attendance;
        _formData['avatarUrl'] = student.avatarUrl;
        _formData['belt'] = student.belt;
        _formData['degree'] = student.degree;
        _formData['birthdate'] = student.birthdate;

        //_imageUrlController.text = _formData['imageUrl'];
      } else {
        _formData['name'] = '';
        _formData['gender'] = 0;
        _formData['email'] = "";
        _formData['attendance'] = 0;
        _formData['avatarUrl'] = '';
        _formData['belt'] = 0;
        _formData['degree'] = 0;
        _formData['birthdate'] = DateTime.now();
      }
    }
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
              final isValid = _form.currentState!.validate();
              if (isValid) {
                _form.currentState!.save();
                Provider.of<Students>(context, listen: false).put(
                  Student(
                    id: _formData['id'] as int,
                    name: _formData['name'] as String,
                    email: _formData['email'] as String,
                    attendance: _formData['attendance'] as int,
                    avatarUrl: _formData['avatarUrl'] as String,
                    belt: _formData['belt'] as int,
                    birthdate: _formData['birthdate'] as DateTime,
                    degree: _formData['degree'] as int,
                    gender: _formData['gender'] as int,
                  ),
                );
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
                    : "Matrícula " + _formData['id'].toString(),
                decoration: InputDecoration(
                  enabled: false,
                ),
              ),
              TextFormField(
                initialValue: _formData['name'].toString(),
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
                initialValue: _formData['email'].toString(),
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
                initialValue: _formData['attendance'].toString(),
                decoration: InputDecoration(
                  labelText: 'Presenças',
                  icon: Icon(Icons.date_range_rounded),
                ),
                //onSaved: (value) => _formData['attendance'] = value as Student,
              ),
              TextFormField(
                initialValue: _formData['gender'].toString(),
                decoration: InputDecoration(
                  labelText: 'Gênero',
                  icon: Icon(Icons.help_outline),
                ),
                //onSaved: (value) => _formData['avatarUrl'] = value as Student,
              ),
              TextFormField(
                initialValue: _formData['belt'].toString(),
                decoration: InputDecoration(
                  labelText: 'Faixa',
                  icon: Icon(Icons.minimize),
                ),
                //onSaved: (value) => _formData['avatarUrl'] = value as Student,
              ),
              TextFormField(
                initialValue: _formData['degree'].toString(),
                decoration: InputDecoration(
                  labelText: 'Grau',
                  icon: Icon(Icons.reorder),
                ),
                //onSaved: (value) => _formData['avatarUrl'] = value as Student,
              ),
              TextFormField(
                initialValue: _formData['birthdate'].toString(),
                decoration: InputDecoration(
                  labelText: 'Data de inicio',
                  icon: Icon(Icons.celebration),
                ),
                //onSaved: (value) => _formData['avatarUrl'] = value as Student,
              ),
              TextFormField(
                initialValue: _formData['birthdate'].toString(),
                decoration: InputDecoration(
                  labelText: 'Data de nascimento',
                  icon: Icon(Icons.cake),
                ),
                //onSaved: (value) => _formData['avatarUrl'] = value as Student,
              ),
              TextFormField(
                initialValue: _formData['avatarUrl'].toString(),
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
