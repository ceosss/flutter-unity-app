import 'package:flutter/material.dart';

enum INPUT_TYPE { EMAIL, PASSWORD, OTHER }

class Input extends StatelessWidget {
  final String hint;
  final Function setText;
  final INPUT_TYPE type;
  Input({@required this.hint, @required this.setText, @required this.type});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: TextField(
          keyboardType: type == INPUT_TYPE.EMAIL
              ? TextInputType.emailAddress
              : TextInputType.name,
          obscureText: type == INPUT_TYPE.PASSWORD ? true : false,
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
