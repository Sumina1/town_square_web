part of 'activities_cubit.dart';

enum ActivitiesStatus { initial, loading, success, failure }

@freezed
class ActivitiesState with _$ActivitiesState {
  const factory ActivitiesState({
    @Default([]) List<ActivityEntity> activities,
    @Default('all') String selectedCategory,
    @Default(ActivitiesStatus.initial) ActivitiesStatus status,
    @Default([]) List<String> joinedActivities,
    String? errorMessage,
    String? joiningActivityId,
  }) = _ActivitiesState;

  const ActivitiesState._();

  List<ActivityEntity> get filteredActivities => selectedCategory == 'all'
      ? activities
      : activities
          .where((activity) => activity.categories.contains(selectedCategory))
          .toList();
}
