import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/home/widgets/category_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Currently Activity', 'view all'),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: kFontLight.withOpacity(0.1),
                border:
                    Border.all(color: kFontLight.withOpacity(0.3), width: 1),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/progress.png',
                        width: 60,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Symetry theory',
                          style: TextStyle(
                              color: kFont,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          '2 lesson left',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kFontLight,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                 circularStrokeCap: CircularStrokeCap.round,
                  radius: 30.0,
                  lineWidth: 5,
                  percent: 0.57,
                  center: Text(
                    '57 %',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  progressColor: kAccent,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
