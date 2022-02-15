import 'package:course_app/models/course.dart';
import 'package:course_app/screens/home/widgets/category_title.dart';
import 'package:course_app/screens/home/widgets/course_item.dart';
import 'package:flutter/material.dart';

class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCourse();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top of the Week', 'view all'),
          Container(height: 300,child: ListView.separated(
            padding: EdgeInsets.all(25),
            itemCount:  coursesList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return CourseItem(coursesList[index]);
            }, separatorBuilder: (context,index)=>SizedBox( width: 15,),
          ), )
        ],
      ),
    );
  }
}
