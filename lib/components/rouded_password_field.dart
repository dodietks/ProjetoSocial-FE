import 'package:flutter/material.dart';
import 'package:projeto_social/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final String? Function(String?)? validator;
  final String? hintText;
  final TextEditingController? controller;
  final IconData icon;
  final IconData suffixIcon;
  final ValueChanged<String>? onChanged;

  const RoundedPasswordField({
    Key? key,
    this.hintText,
    this.icon = Icons.lock,
    this.suffixIcon = Icons.visibility,
    this.validator,
    this.onChanged, this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.visiblePassword,
        validator: validator,
        obscureText: true,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: Colors.amber,
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: Colors.amber,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
