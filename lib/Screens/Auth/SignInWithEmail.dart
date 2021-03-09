import 'package:flutter/material.dart';
import 'package:flutter_unity_app/Components/Button.dart';
import 'package:flutter_unity_app/Components/Input.dart';
import 'package:flutter_unity_app/Components/InputWithLabel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          stops: [0, 1],
          colors: [Color(0xff14d3c1), Color(0xff65A7FB)],
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
              "Sign In",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "We missed you!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InputWithLabel(
                    label: "Email",
                    hint: "Email",
                    setText: () {},
                    type: INPUT_TYPE.EMAIL,
                  ),
                  InputWithLabel(
                    label: "Password",
                    hint: "Password",
                    setText: () {},
                    type: INPUT_TYPE.PASSWORD,
                  ),
                  Button(
                    text: "Sign In",
                    onPress: () {},
                    color: Color(0xffC3C3C3),
                    textColor: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Forgot my Password",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 80),
                    child: Column(
                      children: [
                        Button(
                          text: "Sign Up with Google",
                          icon: FontAwesomeIcons.google,
                          color: Colors.white,
                          textColor: Colors.black,
                          onPress: () {
                            print("Sign Up with Google Pressed");
                          },
                        ),
                        Button(
                          text: "Sign Up with Apple",
                          icon: FontAwesomeIcons.apple,
                          color: Colors.black,
                          textColor: Colors.white,
                          onPress: () {
                            print("Sign up with Apple pressed");
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
