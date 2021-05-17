import 'package:flutter/material.dart';
import 'package:projeto_social/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String? Function(String?)? validator;
  final String? hintText;
  final TextEditingController? controller;
  final IconData icon;
  final ValueChanged<String>? onChanged;

  const RoundedInputField({
    Key? key,
    this.hintText,
    this.icon = Icons.person,
    this.validator,
    this.onChanged, this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        validator: validator,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(icon, color: Colors.amber),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
