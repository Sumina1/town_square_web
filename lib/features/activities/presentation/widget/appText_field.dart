import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/constants/asset_paths.dart';
import 'package:townsquare/core/widgets/svg_icon.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.r),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 3),
            blurRadius: 8.r,
            color: const Color(0x1F000000),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'What do you feel like doing?',
                hintStyle: TextStyle(color: Color.fromARGB(196, 193, 192, 192)),
                border: InputBorder.none,
                isDense: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 0.h),
            child: SvgIcon(
              assetPath: AssetPaths.searchSvg,
              size: 40.w,
              color: Color.fromARGB(196, 134, 132, 132),
            ),
          ),
        ],
      ),
    );
  }
}
