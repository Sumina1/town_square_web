import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:townsquare/core/constants/asset_paths.dart';
import 'package:townsquare/core/widget/text_field.dart';
import 'package:townsquare/core/widgets/svg_icon.dart';

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
        gradient: LinearGradient(
          colors: [
            Color(0xFFFBF2C0),
            Color(0xFFFBF2C0).withOpacity(0.7),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 64.h),
          BuildText(
            text: title,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          SizedBox(height: 8.h),
          BuildText(
            text: description,
            fontSize: 14.sp,
            color: Colors.black,
          ),
          SizedBox(height: 16.h),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              // minimumSize: Size(244.w, 40.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.r),
                  topRight: Radius.circular(5.r),
                  bottomLeft: Radius.circular(5.r),
                  bottomRight: Radius.circular(5.r),
                ),
              ),
              elevation: 3,
              shadowColor: Colors.black.withOpacity(0.12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildText(
                  text: buttonText,
                  fontSize: 14.sp,
                ),
                const SvgIcon(assetPath: AssetPaths.arrowBack)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
