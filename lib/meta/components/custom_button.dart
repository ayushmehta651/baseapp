import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  final String title;
  final dynamic onPressed;
  LoginButton({required this.onPressed, required this.title});

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
