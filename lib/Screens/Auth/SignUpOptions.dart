import 'package:flutter/material.dart';
import 'package:flutter_unity_app/Components/Button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
              0,
              0.45,
              1
            ],
                colors: [
              Color(0xff6602FF),
              Color(0xff6E03FB),
              Color(0xff9E13E4)
            ])),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Join the world of\n immersive experience",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    Button(
                      text: "Sign Up with Google",
                      icon: FontAwesomeIcons.google,
                      color: Colors.white,
                      onPress: () {
                        print("Sign Up with Google Pressed");
                      },
                    ),
                    Button(
                        text: "Sign Up with Apple",
                        icon: FontAwesomeIcons.apple,
                        onPress: () {
                          print("Sign up with Apple pressed");
                        },
                        color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "Or",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Button(
                        text: "Sign Up with Email",
                        icon: FontAwesomeIcons.envelope,
                        onPress: () {
                          print("Sign up with Email pressed");
                        },
                        color: Color(0xff14D3C1)),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          TextButton(
                            onPressed: () {
                              print("Sign in pressed");
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff14D3C1),
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
