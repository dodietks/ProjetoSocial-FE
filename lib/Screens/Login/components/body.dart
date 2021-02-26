import 'package:flutter/material.dart';
import 'package:projeto_social/Screens/Login/components/background.dart';
import 'package:projeto_social/components/have_account_check.dart';
import 'package:projeto_social/components/rouded_button.dart';
import 'package:projeto_social/components/rouded_input_field.dart';
import 'package:projeto_social/components/rouded_password_field.dart';
import 'package:projeto_social/routes/app_routes.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Entrar",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Image.asset(
            "assets/images/logo.png",
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Insira seu E-Mail",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: "Insira sua Senha",
            onChanged: (value) {},
          ),
          RoudedButton(
            text: "Entrar",
            press: () {
              Navigator.of(context).pushNamed(AppRoutes.STUDENT_SCREEN);
            },
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          HaveAccountCheck(
            press: () {
              Navigator.of(context).pushNamed(AppRoutes.SINGUP_SCREEN);
            },
          ),
        ],
      ),
    );
  }
}
