import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onPress;
  final Color color;
  Button(
      {@required this.text,
      @required this.icon,
      @required this.onPress,
      @required this.color});

  Color getPerfectColor() =>
      color == Colors.black ? Colors.white : Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), boxShadow: [
        BoxShadow(
          color: Color(0xff9D13E4),
          blurRadius: 10,
        ),
      ]),
      child: MaterialButton(
        onPressed: onPress,
        child: Row(
          children: [
            Icon(
              icon,
              color: getPerfectColor(),
              size: 30,
            ),
            Expanded(
                child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: getPerfectColor()),
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
