import 'package:flutter/material.dart';
import 'package:flutter_unity_app/Screens/Auth/SignUpOptions.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SignUpOptions(),
      ),
    );
  }
}
