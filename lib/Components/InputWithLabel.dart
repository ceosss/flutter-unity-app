import 'package:flutter/material.dart';
import 'package:flutter_unity_app/Components/Input.dart';

class InputWithLabel extends StatelessWidget {
  final Function setText;
  InputWithLabel({@required this.setText});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What's your name?",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Input(hint: "Name", setText: setText),
      ],
    );
  }
}
