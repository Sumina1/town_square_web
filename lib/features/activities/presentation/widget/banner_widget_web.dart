import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:townsquare/core/widget/text_field.dart';

class BannerWidgetForWeb extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText1;
  final String buttonText2;
  final String progress;

  const BannerWidgetForWeb({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText1,
    required this.buttonText2,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Color(0xFFBAE6FD),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildText(
            text: title,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BuildText(
                      text: description,
                      fontSize: 14.sp,
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.only(
                                top: 4.h, bottom: 4.h, left: 8.w, right: 8.w),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.r),
                                bottomLeft: Radius.circular(4.r),
                                topRight: Radius.circular(4.r),
                                bottomRight: Radius.circular(4.r),
                              ),
                            ),
                          ),
                          child: BuildText(
                            text: buttonText1,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 4.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.r),
                                bottomLeft: Radius.circular(4.r),
                                topRight: Radius.circular(4.r),
                                bottomRight: Radius.circular(4.r),
                              ),
                            ),
                          ),
                          child: BuildText(
                            text: buttonText2,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CircularPercentIndicator(
                radius: 40.r,
                lineWidth: 8.r,
                animation: true,
                percent: int.parse(progress) /
                    100, // Assuming progress is out of 100
                center: BuildText(
                  text: '$progress%',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
                backgroundColor: Colors.white.withOpacity(0.3),
                progressColor: Colors.white,
                circularStrokeCap: CircularStrokeCap.round,
              )
            ],
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
