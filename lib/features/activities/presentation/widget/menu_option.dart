import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/widget/text_field.dart';
import 'package:townsquare/core/widget/svg_icon.dart';

class MenuOption extends StatelessWidget {
  final String icon;
  final String label;

  MenuOption({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          SvgIcon(assetPath: icon, size: 24.w, color: Colors.white),
          SizedBox(width: 16.w),
          BuildText(
            text: label,
            color: Colors.white,
            fontSize: 20.sp,
          ),
        ],
      ),
    );
  }
}
