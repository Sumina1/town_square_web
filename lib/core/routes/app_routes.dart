import 'package:flutter/material.dart';
import 'package:townsquare/features/activities/presentation/screen/todays_activiies_webdesign.dart';

class AppRoutes {
  static const String initial = '/';
  static const String todaysActivities = '/todays-activities';
  static const String todaysActivitiesWeb = '/todays-activities-web';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initial:
        return MaterialPageRoute(
          builder: (_) => const TodaysActivitiesWebdesign(),
        );
      
      case todaysActivitiesWeb:
        return MaterialPageRoute(
          builder: (_) =>   const TodaysActivitiesWebdesign(),
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