import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:projeto_social/constants/constants.dart';
import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model {

  final _url = Uri.http(Constants.BASE_API_URL, Constants.AUTH_VERSION_1);
  Map<String, dynamic> loginData = Map();

  bool isLoading = false;

  void signUp() {}

  void signIn(
      {required String email,
      required String password,
      required VoidCallback onSuccess,
      required VoidCallback onFail}) async {
    isLoading = true;
    notifyListeners();

     http.post(_url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'login': email,
        'password': password,
      }),
    ).then(
         (token){
           print(token);

           onSuccess();
           isLoading = false;
           notifyListeners();
         }).catchError((e){
       isLoading = false;
       notifyListeners();
    });
  }

  void recoverPass() {}

  bool isAuthenticated() {
    return true;
  }
}
