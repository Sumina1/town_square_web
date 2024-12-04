import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/widget/text_field.dart';

class ImageBanner extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;

  const ImageBanner({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/rectangle-32.svg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildText(
            text: title,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          SizedBox(height: 8.h),
          BuildText(
            text: description,
            fontSize: 14.sp,
            color: Colors.white,
          ),
          SizedBox(height: 16.h),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            child: BuildText(
              text: buttonText,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
