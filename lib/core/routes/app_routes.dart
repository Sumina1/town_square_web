import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:townsquare/features/activities/presentation/screen/todays_activiies_webdesign.dart';
import 'package:townsquare/features/activities/presentation/screen/todays_activities_mobile_design.dart';
import 'package:townsquare/core/utils/responsive_layout.dart';

class AppRoutes {
  static const String initial = '/';
  static const String todaysActivities = '/todays-activities';
  static const String todaysActivitiesWeb = '/todays-activities-web';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initial:
        return MaterialPageRoute(
          builder: (_) => const ResponsiveLayout(
            mobile: TodaysActivitiesMobileDesign(),
            tablet: TodaysActivitiesMobileDesign(),
            desktop: TodaysActivitiesWebdesign(),
          ),
        );

      case todaysActivitiesWeb:
        return MaterialPageRoute(
          builder: (_) => const TodaysActivitiesWebdesign(),
        );

      case todaysActivities:
        return MaterialPageRoute(
          builder: (_) => const TodaysActivitiesMobileDesign(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
