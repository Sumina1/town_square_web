part of 'activities_cubit.dart';

enum ActivitiesStatus { initial, loading, success, failure }

@freezed
class ActivitiesState with _$ActivitiesState {
  const ActivitiesState._();

  const factory ActivitiesState({
    @Default([]) List<ActivityEntity> activities,
    @Default('all') String selectedCategory,
    @Default(ActivitiesStatus.initial) ActivitiesStatus status,
    String? errorMessage,
    @Default(0) int selectedIndex,
  }) = _ActivitiesState;

  List<ActivityEntity> get filteredActivities => selectedCategory == 'all'
      ? activities
      : activities
          .where((activity) => activity.categories.contains(selectedCategory))
          .toList();
}
