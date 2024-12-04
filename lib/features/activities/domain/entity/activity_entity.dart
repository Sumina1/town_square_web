import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_entity.freezed.dart';

@freezed
class ActivityEntity with _$ActivityEntity {
  const factory ActivityEntity({
    required String id,
    required String title,
    required String category,
    required DateTime time,
    required int durationMinutes,
    required String location,
    required int availableSpots,
    required double price,
  }) = _ActivityEntity;
} 