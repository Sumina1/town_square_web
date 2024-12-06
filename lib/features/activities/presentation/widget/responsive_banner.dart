import 'package:flutter/material.dart';
import 'package:townsquare/core/utils/responsive_layout.dart';
import 'package:townsquare/features/activities/presentation/widget/banner_widget_web.dart';
import 'package:townsquare/features/activities/presentation/widget/mobile_banner_widget.dart';

class ResponsiveBanner extends StatelessWidget {
  const ResponsiveBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceType = ResponsiveLayout.getDeviceType(context);

    switch (deviceType) {
      case DeviceType.mobile:
        return const MobileBannerWidget();
      case DeviceType.tablet:
        return const BannerWidgetForWeb(
          title: 'You\'re close to your goal!',
          description: 'Join more sport activities to collect more points',
          buttonText1: 'Join now',
          buttonText2: 'My points',
          progress: '27',
        );
      case DeviceType.desktop:
        return const BannerWidgetForWeb(
          title: 'You\'re close to your goal!',
          description: 'Join more sport activities to collect more points',
          buttonText1: 'Join now',
          buttonText2: 'My points',
          progress: '27',
        );
    }
  }
}
