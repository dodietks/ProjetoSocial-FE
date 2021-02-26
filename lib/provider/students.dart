import 'dart:math';

import 'package:flutter/material.dart';
import 'package:projeto_social/data/DUMMY_STUDENTS.dart';
import 'package:projeto_social/models/student.dart';

class Students with ChangeNotifier {
  Map<String, Student> _items = {...DUMMY_STUDENTS};

  List<Student> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Student byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Student student) {
    if (student == null) {
      return;
    }
    // alterar
    if (student.id != null &&
        student.id.trim().isNotEmpty &&
        _items.containsKey(student.id)) {
      _items.update(student.id, (_) => null);
    } else {
      // adicionar
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => Student(
            id: id,
            name: student.name,
            email: student.email,
            avatarUrl: student.avatarUrl,
            attendance: student.attendance),
      );
    }
    notifyListeners();
  }

  void remove(Student student) {
    if (student != null && student.id != null) {
      _items.remove(student.id);
      notifyListeners();
    }
  }
}
