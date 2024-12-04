import 'package:get_it/get_it.dart';
import 'package:townsquare/features/activities/data/repository_impl/activities_repository_impl.dart';
import 'package:townsquare/features/activities/domain/repository/activities_repository.dart';
import 'package:townsquare/core/services/navigation_service.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Services
  getIt.registerLazySingleton(() => NavigationService());

  // Repositories
  getIt.registerLazySingleton<ActivitiesRepository>(
    () => ActivitiesRepositoryImpl(),
  );
}
