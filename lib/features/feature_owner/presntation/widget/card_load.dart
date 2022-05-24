import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/features/widget/custome_text.dart';

class CardLoad extends StatelessWidget {

  String title;

  CardLoad({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.w,
      height: 50.h,
      child: Card(
        elevation: 4,
        color: Colors.grey,
        child: Center(
          child: CustomeText(
            title: title,
            fontSize: 12.sp,
            color: Colors.white,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
