import 'package:course_app/constants/colors.dart';
import 'package:course_app/models/module.dart';
import 'package:flutter/material.dart';

// import '../../../models/module.dart';
class CourseModule extends StatelessWidget {
  final Module module;
  CourseModule(this.module);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.symmetric(vertical: 20) ,
      height: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(

              flex: 1,
              child: Container(
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: module.iconBorder, width: 2),
                          shape: BoxShape.circle,
                          color: module.iconBg),
                      child: Icon(
                        module.icon,
                        color: module.iconColor,
                        size: 30,
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: List.generate(
                          20,
                          (index) => Expanded(
                                  child: Container(
                                width: 2,
                                color: index % 2 == 0
                                    ? Colors.transparent
                                    : module.iconBorder,
                              ))),
                    ))
                  ],
                ),
              )),
          Flexible(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(20),
                // color: Colors.blue,
                decoration: BoxDecoration(
                    color: module.moduleBg,
                    border: Border.all(color: module.moduleBorder, width: 2),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          module.title,
                          style: TextStyle(
                              color: kFontLight, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: kFontLight,
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      module.desc,
                      style: TextStyle(
                        color: kFont.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(children: [
                    _buildButton(Icons.access_time_filled,module.time),
                    SizedBox(width: 10,), 
                    _buildButton(Icons.bookmarks,module.lesson),
                    ],)
                  ],
                ),
              )),
        ],
      ),
    );
  }_buildButton(IconData icon, String text){
  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: module.buttonColor,
      borderRadius: BorderRadius.circular(20)
    ),
    child: Row(children: [
    Icon(icon,size:20,color: module.buttonFont,),
    Text(text,style: TextStyle(color: module.buttonFont,),)
  ],),);
}
}
