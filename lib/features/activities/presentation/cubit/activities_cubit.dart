import 'dart:core';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/repository/activities_repository.dart';
import '../../domain/entity/activity_entity.dart';

part 'activities_state.dart';
part 'activities_cubit.freezed.dart';

class ActivitiesCubit extends Cubit<ActivitiesState> {
  final ActivitiesRepository _repository;

  ActivitiesCubit(this._repository) : super(const ActivitiesState());

  Future<void> loadActivities() async {
    if (state.joiningActivityId == null) {
      emit(state.copyWith(status: ActivitiesStatus.loading));
    }

    try {
      final activities = await _repository.getActivities();
      emit(state.copyWith(
        activities: activities,
        status: ActivitiesStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: ActivitiesStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  void onTabSelected(int index) {
    emit(state.copyWith(selectedIndex: index));
  }

  void changeCategory(String category) {
    emit(state.copyWith(selectedCategory: category));
  }

  Future<void> joinActivity(String activityId) async {
    emit(state.copyWith(joiningActivityId: activityId));
    
    try {
      await _repository.joinActivity(activityId);
      final activities = await _repository.getActivities();
      final updatedJoinedActivities = List<String>.from(state.joinedActivities)..add(activityId);
      emit(state.copyWith(
        activities: activities,
        joinedActivities: updatedJoinedActivities,
        joiningActivityId: null,
        status: ActivitiesStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        errorMessage: e.toString(),
        joiningActivityId: null,
      ));
    }
  }
}
