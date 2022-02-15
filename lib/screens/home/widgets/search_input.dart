import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: kFontLight.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.all(25),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search for history,classes',
                  hintStyle: TextStyle(color: kFontLight),
                  border: InputBorder.none,
                  fillColor: kFontLight.withOpacity(0.1),
                  filled: true,
                  contentPadding: EdgeInsets.all(18)),
            ),
          ),
         Positioned(
           top: 35,
           right: 45, child: Container(
             padding: EdgeInsets.all(8),
             decoration: BoxDecoration(color: kAccent,borderRadius: BorderRadius.circular(10)),
             child: Image.asset('assets/icons/search.png',width: 20,),))
        ],
      ),
    );
  }
}
