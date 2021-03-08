import 'package:flutter/material.dart';

class AuthOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Sign Up"),
            Text("Join the world of immersive experience"),
            Text("Or"),
            Text("Already have an account?")
          ],
        ),
      ),
    );
  }
}
