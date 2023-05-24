import 'package:flutter/material.dart';
import 'package:waste_wise/adminlogin.dart';
import 'package:waste_wise/adminsignup.dart';
import 'package:waste_wise/login.dart';
import 'package:waste_wise/signup.dart';
import 'package:waste_wise/splash.dart';
import 'package:waste_wise/userlogin.dart';
import 'package:waste_wise/usersignup.dart';
import 'package:waste_wise/workerlogin.dart';
import 'package:waste_wise/workersignup.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginPage(),
        '/admin': (context) => AdminLoginPage(),
        '/user': (context) => UserLoginPage(),
        '/worker': (context) => WorkerLoginPage(),
        '/signup': (context) => SignupPage(),
        '/adminsignup': (context) => AdminSignupPage(),
        '/usersignup': (context) => UserSignUpPage(),
        '/workersignup': (context) => WorkerSignupPage(),
      },
    );
  }
}
