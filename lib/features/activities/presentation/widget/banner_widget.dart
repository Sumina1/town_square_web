import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
class BannerWidget extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText1;
  final String buttonText2;
  final String progress;

  BannerWidget({
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
          Text(
            title,
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 16.h),
          Text(description, style: TextStyle(fontSize: 14.sp)),
          SizedBox(height: 16.h),
          Row(
            children: [
              Column(children: [
                 Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(buttonText1),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(buttonText2),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),
                ],
              ),


            
              ],),
                Center(
            child: CircularPercentIndicator(
              radius: 40.r,
              lineWidth: 8.r,
              animation: true,
              percent: int.parse(progress) / 100, // Assuming progress is out of 100
              center: Text(
                '$progress%',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              backgroundColor: Colors.white.withOpacity(0.3),
              progressColor: Colors.white,
              circularStrokeCap: CircularStrokeCap.round,
            ),
          )
             
              
            ],
          ),
          SizedBox(height: 16.h),
        
        ],
      ),
    );
  }
}
