import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onPress;
  final Color color;
  final Color textColor;
  final Color shadowColor;
  Button({
    @required this.text,
    @required this.onPress,
    @required this.color,
    @required this.textColor,
    this.icon,
    this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: shadowColor != null ? shadowColor : Color(0xff9D13E4),
            // Color(0xff9D13E4),
            blurRadius: 10,
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: onPress,
        child: Row(
          children: [
            this.icon != null
                ? Icon(
                    icon,
                    color: textColor,
                    size: 30,
                  )
                : Text(""),
            Expanded(
                child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: textColor),
            ))
          ],
        ),
        color: color,
        splashColor: Color(0xff9E13E4).withOpacity(0.5),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
