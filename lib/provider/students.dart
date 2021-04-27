import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projeto_social/constants/constants.dart';
import 'package:projeto_social/models/student.dart';

class Students with ChangeNotifier {
  final _url = Uri.http(Constants.BASE_API_URL, Constants.STUDENT_VERSION_1);
  List<Student> _items = [];

  List<Student> get items => [..._items];

  int get itemsCount {
    return _items.length;
  }

  Future<List<Student>> loadStudents() async {
    final response = await http.get(_url, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': "*/*",
      'connection': 'keep-alive',
      'Accept-Encoding': 'gzip, deflate, br',
    });

    _items = parseStudents(response.body);
    notifyListeners();
    return _items;
  }

  deleteStudent(int id) {}

  void put(Student student) {}
}

List<Student> parseStudents(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Student>((json) => Student.fromJson(json)).toList();
}
