import 'package:flutter/material.dart';

class Student {
  final String id;
  final String name;
  final String email;
  final String attendance;
  final String avatarUrl;

  const Student({
    this.id,
    @required this.name,
    @required this.email,
    this.attendance,
    this.avatarUrl,
  });
}
