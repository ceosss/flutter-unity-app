import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String hint;
  final Function setText;
  Input({@required this.hint, @required this.setText});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: (text) => setText(text),
          decoration: InputDecoration(
            hintText: hint,
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none),
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          ),
        ));
  }
}
