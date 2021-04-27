import 'package:flutter/material.dart';
import 'package:projeto_social/Screens/Login/components/background.dart';
import 'package:projeto_social/Screens/Singup/components/or_divider.dart';
import 'package:projeto_social/Screens/Singup/components/social_icons.dart';
import 'package:projeto_social/components/have_account_check.dart';
import 'package:projeto_social/components/rouded_button.dart';
import 'package:projeto_social/components/rouded_input_field.dart';
import 'package:projeto_social/components/rouded_password_field.dart';
import 'package:projeto_social/routes/app_routes.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Insira seu E-Mail",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Insira a senha desejada",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Favor repetir a senha",
              onChanged: (value) {},
            ),
            RoudedButton(
              text: "Registrar",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            HaveAccountCheck(
              login: false,
              press: () {
                Navigator.of(context).pushNamed(AppRoutes.LOGIN_SCREEN);
              },
            ),
            OrDivider(
              label: "OU",
            ),
            SocialSingup(
              press: () {},
              imagePath: "assets/icons/google.png",
            )
          ],
        ),
      ),
    );
  }
}
