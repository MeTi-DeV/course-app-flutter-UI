import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  CategoryTitle(this.leftText, this.rightText);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: kFont, fontSize: 20),
          ),
          Text(
            rightText,
            style: TextStyle(color: kFontLight, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
