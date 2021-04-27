import 'package:flutter/material.dart';
import 'package:projeto_social/Screens/Login/login_screen.dart';
import 'package:projeto_social/Screens/Singup/singup_screen.dart';
import 'package:projeto_social/Screens/StudentList/student_list.dart';
import 'package:projeto_social/Screens/StudentRegister/student_registration_screen.dart';
import 'package:projeto_social/Screens/Welcome/welcome_screen.dart';
import 'package:projeto_social/provider/students.dart';
import 'package:projeto_social/routes/app_routes.dart';
import 'package:provider/provider.dart';

void main() => runApp(TheApp());

class TheApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Students(),
        ),
      ],
      child: MaterialApp(
        title: 'Crescendo no esporte',
        theme: ThemeData(
          primaryColor: Colors.amber,
          primarySwatch: Colors.amber,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            textTheme: TextTheme(
              headline2: TextStyle(color: Colors.black),
            ),
          ),
          scaffoldBackgroundColor: Colors.blueGrey[50],
        ),
        routes: {
          AppRoutes.HOME: (_) => WelcomeScreen(),
          AppRoutes.LOGIN_SCREEN: (_) => LoginScreen(),
          AppRoutes.SINGUP_SCREEN: (_) => SingupScreen(),
          AppRoutes.STUDENT_SCREEN: (_) => StudentList(),
          AppRoutes.STUDENT_REGISTRATION_SCREEN: (_) => StudentRegisterScreen()
        },
      ),
    );
  }
}
