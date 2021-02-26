import 'package:flutter/material.dart';

class Student {
  final String id;
  final String name;
  final String email;
  final String avatarUrl;
  final String attendance;

  const Student(
      {this.id,
      @required this.name,
      @required this.email,
      @required this.avatarUrl,
      @required this.attendance});
}
