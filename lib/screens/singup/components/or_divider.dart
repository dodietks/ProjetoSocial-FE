import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  final String? label;

  const OrDivider({Key? key, this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          DividerBuilder(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              label!,
              style:
                  TextStyle(color: Colors.amber, fontWeight: FontWeight.w600),
            ),
          ),
          DividerBuilder(),
        ],
      ),
    );
  }
}

class DividerBuilder extends StatelessWidget {
  const DividerBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        color: Colors.amber,
        height: 1.5,
      ),
    );
  }
}
