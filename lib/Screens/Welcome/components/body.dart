import 'package:flutter/material.dart';
import 'package:projeto_social/components/rouded_button.dart';
import 'package:projeto_social/routes/app_routes.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //This size provide a total height and width of our screen
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.07,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.50,
            ),
            RoudedButton(
              text: "Entrar",
              press: () {
                Navigator.of(context).pushNamed(AppRoutes.LOGIN_SCREEN);
              },
            ),
            RoudedButton(
              text: "Cadastrar",
              color: Colors.amber[100],
              textColor: Colors.blueGrey[900],
              press: () {
                Navigator.of(context).pushNamed(AppRoutes.SINGUP_SCREEN);
              },
            ),
          ],
        ),
      ),
    );
  }
}
