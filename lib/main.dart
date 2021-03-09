import 'package:flutter/material.dart';
import 'package:flutter_unity_app/Screens/Auth/SignUpOptions.dart';
import 'package:flutter_unity_app/Screens/Onboarding/Onboarding2.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'onboarding',
      routes: {
        'onboarding': (context) => Onboarding(),
        'signup_options': (context) => SignUpOptions(),
      },
    );
  }
}
