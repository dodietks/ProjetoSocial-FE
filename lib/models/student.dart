import 'package:flutter/material.dart';

import 'package:projeto_social/models/enums/beltTypes.dart';
import 'package:projeto_social/models/enums/genders.dart';

class Student with ChangeNotifier {
  final int id;
  final String name;
  final int gender;
  final String email;
  final int attendance;
  final String avatarUrl;
  final int belt;
  final int degree;
  final DateTime birthdate;

  Student({
    required this.id,
    required this.name,
    required this.gender,
    required this.email,
    required this.attendance,
    required this.avatarUrl,
    required this.belt,
    required this.degree,
    required this.birthdate,
  });

  factory Student.fromJson(dynamic json) {
    return Student(
      id: json['id'] as int,
      name: json['name'] as String,
      gender: json['gender'] as int,
      email: json['email'] as String,
      attendance: json['attendance'] as int,
      avatarUrl: json['avatarUrl'] as String,
      belt: json['belt'] as int,
      degree: json['degree'] as int,
      birthdate: DateTime.parse(json['birthdate']),
    );
  }

  @override
  String toString() {
    return '{ ${this.id}, ${this.name}, ${this.gender}, ${this.email}, ${this.attendance}, ${this.avatarUrl}, ${this.belt}, ${this.degree}, ${this.birthdate} }';
  }
}
