import 'package:flutter/material.dart';

class LessonBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)
            // border: Border(
            //     top: BorderSide(width: 8, color: Colors.red[100]),
            //     right: BorderSide(width: 8, color: Colors.green[100]),
            //     bottom: BorderSide(width: 8, color: Colors.blue[100]),
            //     left: BorderSide(width: 8, color: Colors.green[100])),
            ),
        child: ClipOval(
          child: Image.asset(
            'images/profile.jpg',
            width: 100,
          ),
        ),
      ),
      shape: Border(
        right: BorderSide(
          width: 8,
          color: Colors.red,
        ),
        left: BorderSide(
          width: 8,
          color: Colors.green,
        ),
        bottom: BorderSide(
          width: 8,
          color: Colors.blue,
        ),
        top: BorderSide(
          width: 8,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
