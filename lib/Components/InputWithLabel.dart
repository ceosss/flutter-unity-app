import 'package:flutter/material.dart';
import 'package:flutter_unity_app/Components/Input.dart';

class InputWithLabel extends StatelessWidget {
  final String label;
  final String hint;
  final Function setText;
  InputWithLabel(
      {@required this.label, @required this.hint, @required this.setText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Input(hint: hint, setText: setText),
        ],
      ),
    );
  }
}
