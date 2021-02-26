import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  const BackGround({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //This size provide a total height and width of our screen
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.4,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.3,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
