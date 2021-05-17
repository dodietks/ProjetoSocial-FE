import 'package:flutter/material.dart';

class SocialSingup extends StatelessWidget {
  final String? imagePath;
  final Function? press;
  const SocialSingup({
    Key? key,
    this.imagePath,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press as void Function()?,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.amber),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            imagePath!,
            height: 30,
          ),
        ));
  }
}
