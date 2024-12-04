import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_entity.freezed.dart';

@freezed
class ActivityEntity with _$ActivityEntity {
  const factory ActivityEntity({
    required String id,
    required String time,
    required String duration,
    required String title,
    required String location,
    required int spotsLeft,
    required double price,
    required String intensity,
    required List<String> categories,
    @Default(false) bool childcare,
    @Default(false) bool workspace,
  }) = _ActivityEntity;
}
