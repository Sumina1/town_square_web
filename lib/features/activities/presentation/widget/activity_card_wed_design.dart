import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/widget/text_field.dart';

class ActivityCard extends StatelessWidget {
  final String time;
  final String activity;
  final String location;
  final String price;
  final String spotsLeft;
  final String intensity;
  final bool childcare;
  final bool soldOut;
  final bool workspace;

  ActivityCard({
    required this.time,
    required this.activity,
    required this.location,
    required this.price,
    required this.spotsLeft,
    this.intensity = '',
    this.childcare = false,
    this.soldOut = false,
    this.workspace = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      margin: EdgeInsets.symmetric(vertical: 8.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.r,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildText(text: time, fontSize: 14.sp),
              SizedBox(height: 4.w),
              BuildText(
                  text: activity, fontSize: 20.sp, fontWeight: FontWeight.bold),
              SizedBox(height: 4.w),
              Row(
                children: [
                  Icon(Icons.location_on, size: 14.w, color: Colors.grey),
                  SizedBox(width: 4.w),
                  BuildText(
                      text: location, fontSize: 14.sp, color: Colors.grey),
                ],
              ),
              SizedBox(height: 8.w),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w),
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.person, size: 12.w, color: Colors.grey),
                        SizedBox(width: 4.w),
                        BuildText(
                            text: spotsLeft,
                            fontSize: 12.sp,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  if (intensity.isNotEmpty) ...[
                    SizedBox(width: 4.w),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.w),
                        decoration: BoxDecoration(
                          color: intensity == 'light'
                              ? Color(0xFFD5F1FF)
                              : intensity == 'medium'
                                  ? Color(0xFFF3E8FF)
                                  : Color(0xFFFFEAD1),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: BuildText(
                            text: intensity,
                            fontSize: 12.sp,
                            color: intensity == 'light'
                                ? Color(0xFF65B5DB)
                                : intensity == 'medium'
                                    ? Color(0xFFC9A4F2)
                                    : Color(0xFFDC974F))),
                  ],
                  if (childcare)
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        decoration: BoxDecoration(
                          color: Color(0xFFD8F7DF),
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        child: BuildText(
                            text: 'childcare',
                            fontSize: 12.sp,
                            color: Color(0xFF8AB58A)),
                      ),
                    ),
                  if (workspace)
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.w),
                        decoration: BoxDecoration(
                          color: Color(0xFFB1B4D9),
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        child: BuildText(
                            text: 'workspace',
                            fontSize: 12.sp,
                            color: Colors.white),
                      ),
                    ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              BuildText(
                  text: price, fontSize: 20.sp, fontWeight: FontWeight.bold),
              SizedBox(height: 8.w),
              ElevatedButton(
                onPressed: soldOut ? null : () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: BuildText(text: soldOut ? 'Sold Out' : 'Join'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
