import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required GlobalKey<FormState> form,
  })   : _form = form,
        super(key: key);

  // ignore: unused_field
  final GlobalKey<FormState> _form;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
    );
  }
}
