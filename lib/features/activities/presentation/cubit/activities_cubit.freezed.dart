// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activities_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivitiesState {
  List<ActivityEntity> get activities => throw _privateConstructorUsedError;
  String get selectedCategory => throw _privateConstructorUsedError;
  ActivitiesStatus get status => throw _privateConstructorUsedError;
  List<String> get joinedActivities => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get joiningActivityId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivitiesStateCopyWith<ActivitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitiesStateCopyWith<$Res> {
  factory $ActivitiesStateCopyWith(
          ActivitiesState value, $Res Function(ActivitiesState) then) =
      _$ActivitiesStateCopyWithImpl<$Res, ActivitiesState>;
  @useResult
  $Res call(
      {List<ActivityEntity> activities,
      String selectedCategory,
      ActivitiesStatus status,
      List<String> joinedActivities,
      String? errorMessage,
      String? joiningActivityId});
}

/// @nodoc
class _$ActivitiesStateCopyWithImpl<$Res, $Val extends ActivitiesState>
    implements $ActivitiesStateCopyWith<$Res> {
  _$ActivitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activities = null,
    Object? selectedCategory = null,
    Object? status = null,
    Object? joinedActivities = null,
    Object? errorMessage = freezed,
    Object? joiningActivityId = freezed,
  }) {
    return _then(_value.copyWith(
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ActivityEntity>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActivitiesStatus,
      joinedActivities: null == joinedActivities
          ? _value.joinedActivities
          : joinedActivities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      joiningActivityId: freezed == joiningActivityId
          ? _value.joiningActivityId
          : joiningActivityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivitiesStateImplCopyWith<$Res>
    implements $ActivitiesStateCopyWith<$Res> {
  factory _$$ActivitiesStateImplCopyWith(_$ActivitiesStateImpl value,
          $Res Function(_$ActivitiesStateImpl) then) =
      __$$ActivitiesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ActivityEntity> activities,
      String selectedCategory,
      ActivitiesStatus status,
      List<String> joinedActivities,
      String? errorMessage,
      String? joiningActivityId});
}

/// @nodoc
class __$$ActivitiesStateImplCopyWithImpl<$Res>
    extends _$ActivitiesStateCopyWithImpl<$Res, _$ActivitiesStateImpl>
    implements _$$ActivitiesStateImplCopyWith<$Res> {
  __$$ActivitiesStateImplCopyWithImpl(
      _$ActivitiesStateImpl _value, $Res Function(_$ActivitiesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activities = null,
    Object? selectedCategory = null,
    Object? status = null,
    Object? joinedActivities = null,
    Object? errorMessage = freezed,
    Object? joiningActivityId = freezed,
  }) {
    return _then(_$ActivitiesStateImpl(
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ActivityEntity>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActivitiesStatus,
      joinedActivities: null == joinedActivities
          ? _value._joinedActivities
          : joinedActivities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      joiningActivityId: freezed == joiningActivityId
          ? _value.joiningActivityId
          : joiningActivityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ActivitiesStateImpl extends _ActivitiesState {
  const _$ActivitiesStateImpl(
      {final List<ActivityEntity> activities = const [],
      this.selectedCategory = 'all',
      this.status = ActivitiesStatus.initial,
      final List<String> joinedActivities = const [],
      this.errorMessage,
      this.joiningActivityId})
      : _activities = activities,
        _joinedActivities = joinedActivities,
        super._();

  final List<ActivityEntity> _activities;
  @override
  @JsonKey()
  List<ActivityEntity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  @JsonKey()
  final String selectedCategory;
  @override
  @JsonKey()
  final ActivitiesStatus status;
  final List<String> _joinedActivities;
  @override
  @JsonKey()
  List<String> get joinedActivities {
    if (_joinedActivities is EqualUnmodifiableListView)
      return _joinedActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_joinedActivities);
  }

  @override
  final String? errorMessage;
  @override
  final String? joiningActivityId;

  @override
  String toString() {
    return 'ActivitiesState(activities: $activities, selectedCategory: $selectedCategory, status: $status, joinedActivities: $joinedActivities, errorMessage: $errorMessage, joiningActivityId: $joiningActivityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivitiesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._joinedActivities, _joinedActivities) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.joiningActivityId, joiningActivityId) ||
                other.joiningActivityId == joiningActivityId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activities),
      selectedCategory,
      status,
      const DeepCollectionEquality().hash(_joinedActivities),
      errorMessage,
      joiningActivityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivitiesStateImplCopyWith<_$ActivitiesStateImpl> get copyWith =>
      __$$ActivitiesStateImplCopyWithImpl<_$ActivitiesStateImpl>(
          this, _$identity);
}

abstract class _ActivitiesState extends ActivitiesState {
  const factory _ActivitiesState(
      {final List<ActivityEntity> activities,
      final String selectedCategory,
      final ActivitiesStatus status,
      final List<String> joinedActivities,
      final String? errorMessage,
      final String? joiningActivityId}) = _$ActivitiesStateImpl;
  const _ActivitiesState._() : super._();

  @override
  List<ActivityEntity> get activities;
  @override
  String get selectedCategory;
  @override
  ActivitiesStatus get status;
  @override
  List<String> get joinedActivities;
  @override
  String? get errorMessage;
  @override
  String? get joiningActivityId;
  @override
  @JsonKey(ignore: true)
  _$$ActivitiesStateImplCopyWith<_$ActivitiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
