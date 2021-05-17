import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required GlobalKey<FormState> form,
  })  : _form = form,
        super(key: key);

  // ignore: unused_field
  final GlobalKey<FormState> _form;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
