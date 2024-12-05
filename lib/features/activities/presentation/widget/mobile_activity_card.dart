import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/constants/app_color_constant.dart';
import 'package:townsquare/core/constants/asset_paths.dart';
import 'package:townsquare/core/widget/text_field.dart';
import 'package:townsquare/core/widgets/svg_icon.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_cubit.dart';

class MobileActivityCard extends StatelessWidget {
  final String time;
  final String activity;
  final String location;
  final String price;
  final String spotsLeft;
  final String intensity;
  final String duration;
  final bool childcare;
  final bool soldOut;

  const MobileActivityCard({
    super.key,
    required this.time,
    required this.activity,
    required this.location,
    required this.price,
    required this.spotsLeft,
    required this.intensity,
    required this.duration,
    this.childcare = false,
    this.soldOut = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      margin: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: time,
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: ' ($duration)',
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.w),
              BuildText(
                text: activity,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 4.w),
              Row(
                children: [
                  SvgIcon(
                    assetPath: AssetPaths.mapPinSvg,
                    size: 14.w,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 4.w),
                  BuildText(
                    text: location,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                    child: Row(
                      children: [
                        SvgIcon(
                          assetPath: AssetPaths.personSvg,
                          size: 10.w,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 4.w),
                        BuildText(
                          text: spotsLeft,
                          fontSize: 10.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.w),
                    decoration: BoxDecoration(
                      color: AppColorConstant.intensityColors[intensity],
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: BuildText(
                      text: intensity,
                      fontSize: 10.sp,
                      color: AppColorConstant.intensityTextColors[intensity],
                    ),
                  ),
                  if (childcare)
                    Padding(
                      padding: EdgeInsets.only(left: 4.w),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 2.w),
                        decoration: BoxDecoration(
                          color: Color(0xFFD8F7DF),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: BuildText(
                          text: 'childcare',
                          fontSize: 10.sp,
                          color: const Color(0xFF8AB58A),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              BuildText(
                text: price,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 8.h),
              ElevatedButton(
                onPressed: soldOut
                    ? null
                    : () {
                        if (context.read<ActivitiesCubit>().state.status ==
                            ActivitiesStatus.loading) {
                          context
                              .read<ActivitiesCubit>()
                              .joinActivity(activity);
                        }
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  minimumSize: Size(58.w, 33.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6.r),
                      bottomLeft: Radius.circular(6.r),
                      topRight: Radius.circular(6.r),
                      bottomRight: Radius.circular(6.r),
                    ),
                  ),
                ),
                child: context.read<ActivitiesCubit>().state.status ==
                        ActivitiesStatus.loading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(color: Colors.white),
                      )
                    : BuildText(
                        text: soldOut ? 'Sold out' : 'Join',
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
