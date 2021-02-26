import 'package:flutter/material.dart';

class HaveAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const HaveAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Você ainda não é cadastrado? " : "Você já é cadastrado? ",
          style: TextStyle(color: Colors.blueGrey),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Cadastrar" : "Entrar",
            style: TextStyle(
                color: Colors.blueGrey[600], fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
