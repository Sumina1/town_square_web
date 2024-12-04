import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/features/activities/presentation/widget/banner_widget.dart';
import 'package:townsquare/features/activities/presentation/widget/info_banner.dart';

class RightBanner extends StatelessWidget {
  const RightBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          
          BannerWidget(
            title: 'You’re close to your goal!',
            description: 'Join more sport activities to collect more points',
            buttonText1: 'Join now',
            buttonText2: 'My points',
            progress: '27',
          ),
          SizedBox(height: 16.h),
          ImageBanner(
            title: 'Weekly workshops for kids',
            description: 'Sign up for early access to weekly activities for your kids full of learning and fun!',
            buttonText: 'Learn more',
          ),
          SizedBox(height: 16.h),
          ImageBanner(
            title: 'Popular events near you!',
            description: 'Unleash the fun! Explore the world of exciting events happening near you.',
            buttonText: 'See more',
          ),
        ],
      ),
    );
  }
}
