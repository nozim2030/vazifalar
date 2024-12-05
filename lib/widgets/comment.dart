// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:burger_ui/utils/colors.dart';

class Comment extends StatelessWidget {
  final String title;
  final String comment;
  final String imagePath;

  const Comment({
    Key? key,
    required this.title,
    required this.comment,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(
          width: 15.w,
        ),
        Container(
          width: 250.w,
          // height: 170.h,
          decoration: BoxDecoration(
            color: AppColors.containerBackgrColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text("20/12/2020"),
                    const Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                  ],
                ),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Image.asset("assets/images/rating5.png"),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  comment,
                  style: TextStyle(fontSize: 10.h),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
