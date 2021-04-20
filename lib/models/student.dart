import 'package:flutter/material.dart';
import 'package:projeto_social/models/enums/beltTypes.dart';
import 'package:projeto_social/models/enums/genders.dart';

class Student {
  final String id;
  final String name;
  final Genders gender;
  final String email;
  final int attendance;
  final String avatarUrl;
  final BeltTypes belt;
  final int degree;
  final DateTime birthdate;

  const Student({
    this.id,
    @required this.name,
    this.gender,
    @required this.email,
    this.attendance,
    this.avatarUrl,
    this.belt,
    this.degree,
    @required this.birthdate,
  });
}
