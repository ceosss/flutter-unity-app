import 'package:flutter/material.dart';
import 'package:custom_rounded_rectangle_border/custom_rounded_rectangle_border.dart';

class LessonBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: CustomRoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(65),
              topRight: Radius.circular(65),
              bottomLeft: Radius.circular(65),
              bottomRight: Radius.circular(65)),
          // topSide: BorderSide(color: Colors.red),
          // leftSide: BorderSide(color: Colors.red),
          // rightSide: BorderSide(color: Colors.green),
          // bottomSide: BorderSide(color: Colors.blue),
          bottomLeftCornerSide: BorderSide(color: Colors.red, width: 8),
          bottomRightCornerSide: BorderSide(color: Colors.green, width: 8),
          topLeftCornerSide: BorderSide(color: Colors.blue, width: 8),
          topRightCornerSide: BorderSide(color: Colors.red, width: 8),
        ),
      ),
      padding: EdgeInsets.all(8),
      child: ClipOval(
        child: Image.asset(
          'images/profile.jpg',
          width: 100,
        ),
      ),
    );
  }
}
