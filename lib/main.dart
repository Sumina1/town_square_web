import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:townsquare/core/routes/app_routes.dart';
import 'package:townsquare/core/di/locator.dart';
import 'package:townsquare/core/services/navigation_service.dart';
import 'package:townsquare/features/activities/domain/repository/activities_repository.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_cubit.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ActivitiesCubit(
        getIt<ActivitiesRepository>(),
      )..loadActivities(),
      child: ScreenUtilInit(
        designSize: MediaQuery.of(context).size,
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          navigatorKey: getIt<NavigationService>().navigatorKey,
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
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor:
                    MediaQuery.of(context).size.width < 600 ? 1.0 : 1.2,
              ),
              child: child!,
            );
          },
          initialRoute: AppRoutes.initial,
          onGenerateRoute: AppRoutes.onGenerateRoute,
        ),
      ),
    );
  }
}
