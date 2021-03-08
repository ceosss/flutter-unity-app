import 'package:flutter/material.dart';
import 'package:flutter_unity_app/Components/Button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
            0,
            0.3,
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
            Text("Sign Up"),
            Text("Join the world of immersive experience"),
            Button(
              text: "Sign in with Google",
              icon: FontAwesomeIcons.google,
              onPress: () {
                print("Pressed");
              },
            ),
            Text("Or"),
            Text("Already have an account?")
          ],
        ),
      ),
    );
  }
}
