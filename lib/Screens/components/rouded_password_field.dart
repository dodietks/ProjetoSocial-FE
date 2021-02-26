import 'package:flutter/material.dart';
import 'package:projeto_social/Screens/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final hintText;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            Icons.lock,
            color: Colors.amber,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.amber,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
