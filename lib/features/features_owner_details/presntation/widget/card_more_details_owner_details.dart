import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/features/widget/custome_text.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CardMoreDetailsOwnerDetails extends StatelessWidget {
  String image;

  CardMoreDetailsOwnerDetails({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 4.w),
        child: Image.asset(image,width: 20.w,height: 20.h,),
        // child: SvgPicture.asset(image,width: 50.w,height: 50.h,color: Colors.blue,),
      ),
    );
  }
}