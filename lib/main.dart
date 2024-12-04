import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/routes/app_routes.dart';

import 'package:townsquare/features/activities/presentation/screen/todays_activiies_webdesign.dart';


void main() async {

  

  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  Size(1900, 1500),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: true,
          title: 'TownSquare',
          
          theme: ThemeData(
            fontFamily: 'Poppins',
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: child,
          initialRoute: AppRoutes.initial,
        );
      },
      child: const TodaysActivitiesWebdesign(),
    );
  }
}

