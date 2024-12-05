import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/features/activities/presentation/screen/todays_activities_mobile_design.dart';
import 'package:townsquare/features/activities/presentation/widget/banner_widget_web.dart';
import 'package:townsquare/features/activities/presentation/widget/event_card.dart';
import 'package:townsquare/features/activities/presentation/widget/info_banner.dart';

class RightBanner extends StatelessWidget {
  const RightBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          const BannerWidgetForWeb(
            title: 'You’re close to your goal!',
            description: 'Join more sport activities to collect more points',
            buttonText1: 'Join now',
            buttonText2: 'My points',
            progress: '27',
          ),
          SizedBox(height: 16.h),
          const ImageBanner(
            title: 'Weekly workshops for kids',
            description:
                'Sign up for early access to weekly activities for your kids full of learning and fun!',
            buttonText: 'Learn more',
          ),
          SizedBox(height: 16.h),
          EventCard()
        ],
      ),
    );
  }
}
