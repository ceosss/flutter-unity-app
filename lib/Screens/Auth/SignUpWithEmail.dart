import 'package:flutter/material.dart';
import 'package:flutter_unity_app/Components/Input.dart';
import 'package:flutter_unity_app/Components/InputWithLabel.dart';

// ignore: must_be_immutable
class SignUpWithEmail extends StatelessWidget {
  String name = "";
  String email = "";
  String password = "";
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
            child: Column(
          children: [
            Container(
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15),
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Join the world of\n immersive experiences.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputWithLabel(
                      label: "What's your name?",
                      hint: "Name",
                      type: INPUT_TYPE.OTHER,
                      setText: (text) => name = text),
                  InputWithLabel(
                      label: "Email",
                      hint: "xyz@example.com",
                      type: INPUT_TYPE.EMAIL,
                      setText: (text) => email = text),
                  InputWithLabel(
                      label: "Set a Password",
                      hint: "Password",
                      type: INPUT_TYPE.PASSWORD,
                      setText: (text) => password = text)
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
