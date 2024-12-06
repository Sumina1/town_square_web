import '../entity/activity_entity.dart';

abstract class ActivitiesRepository {
  Future<List<ActivityEntity>> getActivities();
  Future<void> joinActivity(String activityId);
} 