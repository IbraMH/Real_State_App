import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_state/features/feature_place_details/presntation/view/place_details.dart';
import 'package:real_state/features/widget/custome_text.dart';

class ItemRowAlertDialog extends StatelessWidget {
  String title;

  ItemRowAlertDialog({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomeText(
          title: title,
          color: Colors.black,
          fontSize: 16.sp,
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        PlaceDetails()));
          },
          child: Card(
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
              child: Image.asset(
                'assets/images/image.png',
                width: 30.w,
                height: 30.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
