import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/constants/asset_paths.dart';
import 'package:townsquare/core/widget/text_field.dart';

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 282.w,
      height: 390.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        image: const DecorationImage(
          image: AssetImage(AssetPaths.cardImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 29.h,
            left: -12.51.w,
            child: Container(
              width: 253.49.w,
              child: BuildText(
                text: 'Popular events near you!',
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 230.h,
            left: -2.24.w,
            child: Container(
              width: 233.52.w,
              child: BuildText(
                text:
                    ' Unleash the fun! Explore the world of exciting events happening near you.',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Positioned(
            bottom: 10.h,
            right: 22.w,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 21.r,
                      backgroundImage: const AssetImage(AssetPaths.eventImage),
                    ),
                    Positioned(
                      left: 15,
                      child: CircleAvatar(
                        radius: 21.r,
                        backgroundImage:
                            const AssetImage(AssetPaths.eventImage2),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      child: CircleAvatar(
                        radius: 21.r,
                        backgroundImage:
                            const AssetImage(AssetPaths.eventImage3),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 8.w),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 62, vertical: 10),
                  ),
                  child: Text(
                    'See More',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
