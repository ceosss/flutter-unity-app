import 'package:flutter/material.dart';

enum INPUT_TYPE { EMAIL, PASSWORD, DATE, OTHER }

class Input extends StatelessWidget {
  final String hint;
  final Function setText;
  final INPUT_TYPE type;
  final bool enabled;
  final String text;
  final Widget icon;
  var textController = new TextEditingController();
  Input({
    @required this.hint,
    @required this.setText,
    @required this.type,
    this.enabled,
    this.icon,
    this.text,
  });
  TextEditingController getText() {
    textController.text = (type == INPUT_TYPE.DATE ? text : null);
    return textController;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: TextField(
          controller: getText(),
          enabled: enabled,
          keyboardType: type == INPUT_TYPE.EMAIL
              ? TextInputType.emailAddress
              : TextInputType.name,
          obscureText: type == INPUT_TYPE.PASSWORD ? true : false,
          onChanged: (text) => setText(text),
          decoration: InputDecoration(
            suffixIcon: icon ?? icon,
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
