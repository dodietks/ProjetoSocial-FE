import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projeto_social/constants/constants.dart';
import 'package:projeto_social/models/student.dart';

class Students with ChangeNotifier {
  final _baseUrl = Uri.parse('${Constants.BASE_API_URL}/${Constants.STUDENT_VERSION_1}');
  List<Student> _items = [];

  List<Student> get items => [..._items];

  int get count {
    return _items.length;
  }

  Future<void> loadStudents() async {
    final response = await http.get(_baseUrl);
    Map<String, dynamic> data = json.decode(response.body);
    print(json.decode(response.body));
    _items.clear();
    if (data != null) {
      data.forEach((studentId, studentData) {
        _items.add(Student(
          id: studentId,
          name: studentData['name'],
          gender: studentData['gender'],
          email: studentData['email'],
          avatarUrl: studentData['avatarUrl'],
          degree: studentData['degree'],
          birthdate: studentData['birthdate'],
        ));
      });
      notifyListeners();
    }
    return Future.value();
  }
}

// Student byIndex(int i) {
//   return _items.values.elementAt(i);
// }

  // void put(Student student) {
  //   if (student == null) {
  //     return;
  //   }
  //   // alterar
  //   if (student.id != null &&
  //       student.id.bitLength > 0 &&
  //       _items.containsKey(student.id)) {
  //     _items.update(student.id, (_) => student);
  //   } else {
  //     // adicionar
  //     final id = Random().nextInt(999999);
  //     _items.putIfAbsent(
  //       id,
  //       () => Student(
  //           id: id,
  //           name: student.name,
  //           email: student.email,
  //           avatarUrl: student.avatarUrl,
  //           attendance: student.attendance),
  //     );
  //   }
  //   notifyListeners();
  // }

  // void remove(Student student) {
  //   if (student != null && student.id != null) {
  //     _items.remove(student.id);
  //     notifyListeners();
  //   }
  // }