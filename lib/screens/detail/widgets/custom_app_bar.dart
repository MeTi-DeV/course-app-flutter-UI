import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:course_app/constants/colors.dart';
import 'package:course_app/models/course.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  CustomAppBar(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  child: Image.asset(
                    course.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: Container(
              width: 110,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: kAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {},
                child: Text('Start class'),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 25,
            child: BlurryContainer(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              borderRadius: BorderRadius.circular(15),
              width: 50,
              height: 50,
              blur: 4,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                iconSize: 20,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            right: 25,
            child: BlurryContainer(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              borderRadius: BorderRadius.circular(15),
              width: 50,
              height: 50,
              blur: 4,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.white,
                ),
                iconSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
