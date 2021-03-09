import 'package:flutter/material.dart';

class SignInWithEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0, 0.45, 1],
            colors: [Color(0xff6602FF), Color(0xff6E03FB), Color(0xff9E13E4)],
          ),
        ),
        child: SafeArea(
          child: Text("Sign In "),
        ),
      ),
    );
  }
}
