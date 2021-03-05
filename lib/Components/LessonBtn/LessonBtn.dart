import 'package:flutter/material.dart';

class LessonBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      // clipper: ShapeBorderClipper(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(
      //       Radius.circular(100),
      //     ),
      //   ),
      // ),
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          // border: Border.all(width: 8, color: Colors.green[100]),
          // borderRadius: BorderRadius.circular(100),
          border: Border(
              top: BorderSide(width: 8, color: Colors.red[100]),
              right: BorderSide(width: 8, color: Colors.green[100]),
              bottom: BorderSide(width: 8, color: Colors.blue[100]),
              left: BorderSide(width: 8, color: Colors.green[100])),
        ),
        child: ClipOval(
          child: Image.asset(
            'images/profile.jpg',
            width: 100,
          ),
        ),
      ),
    );
  }
}
