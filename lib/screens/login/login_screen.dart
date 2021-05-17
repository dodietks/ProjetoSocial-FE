import 'package:flutter/material.dart';
import 'package:projeto_social/components/have_account_check.dart';
import 'package:projeto_social/components/rouded_button.dart';
import 'package:projeto_social/components/rouded_input_field.dart';
import 'package:projeto_social/components/rouded_password_field.dart';
import 'package:projeto_social/models/user_model.dart';
import 'package:projeto_social/routes/app_routes.dart';
import 'package:scoped_model/scoped_model.dart';

class LoginScreen extends StatelessWidget {

  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(body: ScopedModelDescendant<UserModel>(
      builder: (context, child, model) {
        if (model.isLoading)
          return Center(
            child: CircularProgressIndicator(),
          );
        return Form(
          key: _formKey,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/bg_login_top.png",
                  width: size.width * 0.50,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/bg_login_bottom.png",
                  width: size.width * 0.55,
                ),
              ),
              ListView(
                padding: EdgeInsets.all(16.0),
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    height: size.height * 0.35,
                  ),
                  RoundedInputField(
                    controller: _emailController,
                    hintText: "Insira seu E-Mail",
                    validator: (text) {
                      if (text!.isEmpty || !text.contains("@"))
                        return "E-mail inválido, o e-mail precisa conter ao menos um '@'!";
                    },
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    controller: _passController,
                    hintText: "Insira sua Senha",
                    validator: (text) {
                      if (text!.isEmpty || text.length < 4)
                        return "A senha precisa ter mais de 4 caracteres";
                    },
                    onChanged: (value) {},
                  ),
                  RoudedButton(
                    text: "Entrar",
                    press: () {
                      if (_formKey.currentState!.validate()) {
                        model.signIn(
                          email: _emailController.text,
                          password: _passController.text,
                          onSuccess: _onSuccess,
                          onFail: _onFail,
                        );
                        Navigator.of(context)
                            .pushNamed(AppRoutes.STUDENT_SCREEN);
                      }
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
            ],
          ),
        );
      },
    ));
  }
  

  void _onSuccess() {

  }
  void _onFail() {
  }
}
