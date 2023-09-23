import 'package:flutter/material.dart';
import 'package:login/login_page.dart';
import 'package:login/signup_page.dart';

class LoginandSignup extends StatefulWidget {
  const LoginandSignup({super.key});

  @override
  State<LoginandSignup> createState() => _LoginandSignupState();
}

class _LoginandSignupState extends State<LoginandSignup> {
  bool isLogin = true;
  void togglepage() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLogin) {
      return LoginPage(
        onPressed: togglepage,
      );
    } else {
      return SignupPage(
        onPressed: togglepage,
      );
    }
  }
}
