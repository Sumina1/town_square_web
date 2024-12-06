import '../../domain/entity/activity_entity.dart';
import '../../domain/repository/activities_repository.dart';

class ActivitiesRepositoryImpl implements ActivitiesRepository {
  List<ActivityEntity> _activities = [];
  bool _initialized = false;

  @override
  Future<List<ActivityEntity>> getActivities() async {
    // Only initialize once
    if (!_initialized) {
      await Future.delayed(const Duration(milliseconds: 500));
      _activities = [
        const ActivityEntity(
          id: '1',
          time: '08:00',
          duration: '60 min',
          title: 'Beach Yoga',
          location: 'La Playa de la Rada',
          spotsLeft: 8,
          price: 9.0,
          intensity: 'light',
          categories: ['Sports'],
        ),
        const ActivityEntity(
          id: '2',
          time: '13:15',
          duration: '60 min',
          title: 'Standing Tapas Lunch',
          location: 'Casa Marina',
          spotsLeft: 8,
          price: 15.0,
          intensity: '',
          categories: ['Food'],
        ),
        const ActivityEntity(
          id: '3',
          time: '15:00',
          duration: 'Drop-in until 20:00',
          title: 'Kids LEGO Club',
          location: 'La Bloqueria',
          spotsLeft: 0,
          price: 10.0,
          intensity: '',
          categories: ['Kids'],
          childcare: true,
          workspace: true,
        ),
        const ActivityEntity(
          id: '4',
          time: '16:30',
          duration: '90 min',
          title: 'Pottery Workshop',
          location: 'Arte Studio',
          spotsLeft: 1,
          price: 25.0,
          intensity: '',
          categories: ['Creative'],
        ),
      ];
      _initialized = true;
    }

    return _activities;
  }

  @override
  Future<void> joinActivity(String activityId) async {
    await Future.delayed(const Duration(seconds: 1));
    final activityIndex =
        _activities.indexWhere((activity) => activity.id == activityId);

    if (activityIndex != -1 && _activities[activityIndex].spotsLeft > 0) {
      final updatedActivity = _activities[activityIndex].copyWith(
        spotsLeft: _activities[activityIndex].spotsLeft - 1,
      );

      _activities = List<ActivityEntity>.from(_activities)
        ..[activityIndex] = updatedActivity;
    } else {
      throw Exception('No spots available');
    }
  }
}
