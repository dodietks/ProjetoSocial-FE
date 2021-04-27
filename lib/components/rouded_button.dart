import 'package:flutter/material.dart';

class RoudedButton extends StatelessWidget {
  final String? text;
  final Function? press;
  final Color? color, textColor;
  const RoudedButton({
    Key? key,
    this.text,
    this.press,
    this.color = Colors.amber,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
            //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            //color: color,
            onPressed: press as void Function()?,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                text!,
                style: TextStyle(color: textColor),
              ),
            )),
      ),
    );
  }
}
