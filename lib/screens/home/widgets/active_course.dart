import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/home/widgets/category_title.dart';
import 'package:flutter/material.dart';

class ActiveCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Currently Activity', 'view all'),
          Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: kFontLight.withOpacity(0.1),
                border:
                    Border.all(color: kFontLight.withOpacity(0.3), width: 1),
                borderRadius: BorderRadius.circular(8)),
                child: Row(children: [
                  ClipRRect(borderRadius: BorderRadius.circular(8),
                  child: Image.asset('assets/images/progress.png'),)
                ],),
          )
        ],
      ),
    );
  }
}
