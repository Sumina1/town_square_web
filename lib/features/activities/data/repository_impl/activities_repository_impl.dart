import '../../domain/entity/activity_entity.dart';
import '../../domain/repository/activities_repository.dart';

class ActivitiesRepositoryImpl implements ActivitiesRepository {
  @override
  Future<List<ActivityEntity>> getActivities() async {
    // TODO: Replace with actual API call
    return [
      ActivityEntity(
        id: '1',
        title: 'Morning Yoga',
        category: 'Sports',
        time: DateTime.now().add(const Duration(hours: 1)),
        durationMinutes: 60,
        location: 'Central Park',
        availableSpots: 5,
        price: 15.0,
      ),
      // Add more mock activities...
    ];
  }

  @override
  Future<void> joinActivity(String activityId) async {
    // TODO: Implement actual API call
    await Future.delayed(const Duration(seconds: 1));
  }
} 