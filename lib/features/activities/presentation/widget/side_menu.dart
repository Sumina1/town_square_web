import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/constants/asset_paths.dart';
import 'package:townsquare/core/widget/text_field.dart';
import 'package:townsquare/core/widget/svg_icon.dart';
import 'package:townsquare/features/activities/presentation/widget/menu_option.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 272.w,
      color: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 54.h, horizontal: 40.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AssetPaths.logo,
          ),
          SizedBox(height: 60.h),
          MenuOption(icon: AssetPaths.calendarSvg, label: 'Activities'),
          MenuOption(icon: AssetPaths.mapSvg, label: 'Locations'),
          MenuOption(icon: AssetPaths.starSvg, label: 'Services'),
          MenuOption(icon: AssetPaths.users, label: 'Communities'),
          MenuOption(icon: AssetPaths.bellSvg, label: 'Notifications'),
          SizedBox(height: 20.h),
          SizedBox(
            width: 220.w,
            height: 45.h,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add, size: 24.w, color: Colors.black87),
              label: Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: BuildText(
                  text: 'Create',
                  color: Colors.black87,
                  fontSize: 20.sp,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF76C8FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          SizedBox(height: 50.h),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AssetPaths.profileUser, height: 36.h, width: 36.w),
              SizedBox(width: 16.w),
              BuildText(
                text: 'Profile',
                color: Colors.white,
                fontSize: 20.sp,
              ),
              SizedBox(width: 50.w),
              SvgIcon(
                assetPath: AssetPaths.moreVertical,
                size: 24.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
