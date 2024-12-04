import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/routes/app_routes.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 770),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        navigatorKey: navigatorKey,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'SF Pro Display',
              ),
          primaryColor: const Color(0xFF13B9FF),
        ),
        initialRoute: AppRoutes.initial,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
