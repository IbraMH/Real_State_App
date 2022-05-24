import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/features/widget/custome_text.dart';

class CardMoreDetailsOwner extends StatelessWidget {
  String image;
  String title;
  bool showNum;
  GestureTapCallback? pressCard;

  CardMoreDetailsOwner({
    required this.image,
    required this.title,
    this.showNum = false,
    this.pressCard,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: pressCard,
          child: SizedBox(
            width: 57.w,
            height: 57.h,
            child: Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 2.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(image,width: 25.w,height: 25.h,),
                    SizedBox(height: 5.h),
                    CustomeText(
                      title: title,
                      fontSize: 7.sp,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w900,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        showNum?Positioned(
          child: Container(
            width: 20.w,
            height: 20.h,
            padding: EdgeInsets.all(2.w),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.w),
                border: Border.all(
                  color: Colors.white,
                  width: 1.5,
                )),
            child: CustomeText(
              title: '14',
              color: Colors.white,
              fontSize: 8.sp,
              fontWeight: FontWeight.bold,
              // textAlign: TextAlign.center,
            ),
          ),
        ):SizedBox(),
      ],
    );
  }
}