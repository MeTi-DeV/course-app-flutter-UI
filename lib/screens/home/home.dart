import 'package:course_app/screens/home/widgets/active_course.dart';

import '/screens/home/widgets/feature_courser.dart';
import '/constants/colors.dart';
import '/screens/home/widgets/emoji_text.dart';
import '/screens/home/widgets/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [EmojiText(), SearchInput(), FeatureCourse(),ActiveCourse()],
          ),
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: kBackground,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          'Hello Mehdi',
          style: TextStyle(color: kFontLight, fontSize: 16),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 2, color: kFontLight.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                'assets/icons/notification.png',
              ),
              width: 50,
            ),
            Positioned(
                top: 15,
                right: 18,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: kAccent),
                )),
          ],
        )
      ],
    );
  }
}
