// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  int get availableSpots => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityEntityCopyWith<ActivityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityEntityCopyWith<$Res> {
  factory $ActivityEntityCopyWith(
          ActivityEntity value, $Res Function(ActivityEntity) then) =
      _$ActivityEntityCopyWithImpl<$Res, ActivityEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String category,
      DateTime time,
      int durationMinutes,
      String location,
      int availableSpots,
      double price});
}

/// @nodoc
class _$ActivityEntityCopyWithImpl<$Res, $Val extends ActivityEntity>
    implements $ActivityEntityCopyWith<$Res> {
  _$ActivityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? time = null,
    Object? durationMinutes = null,
    Object? location = null,
    Object? availableSpots = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      availableSpots: null == availableSpots
          ? _value.availableSpots
          : availableSpots // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityEntityImplCopyWith<$Res>
    implements $ActivityEntityCopyWith<$Res> {
  factory _$$ActivityEntityImplCopyWith(_$ActivityEntityImpl value,
          $Res Function(_$ActivityEntityImpl) then) =
      __$$ActivityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String category,
      DateTime time,
      int durationMinutes,
      String location,
      int availableSpots,
      double price});
}

/// @nodoc
class __$$ActivityEntityImplCopyWithImpl<$Res>
    extends _$ActivityEntityCopyWithImpl<$Res, _$ActivityEntityImpl>
    implements _$$ActivityEntityImplCopyWith<$Res> {
  __$$ActivityEntityImplCopyWithImpl(
      _$ActivityEntityImpl _value, $Res Function(_$ActivityEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? time = null,
    Object? durationMinutes = null,
    Object? location = null,
    Object? availableSpots = null,
    Object? price = null,
  }) {
    return _then(_$ActivityEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      availableSpots: null == availableSpots
          ? _value.availableSpots
          : availableSpots // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ActivityEntityImpl implements _ActivityEntity {
  const _$ActivityEntityImpl(
      {required this.id,
      required this.title,
      required this.category,
      required this.time,
      required this.durationMinutes,
      required this.location,
      required this.availableSpots,
      required this.price});

  @override
  final String id;
  @override
  final String title;
  @override
  final String category;
  @override
  final DateTime time;
  @override
  final int durationMinutes;
  @override
  final String location;
  @override
  final int availableSpots;
  @override
  final double price;

  @override
  String toString() {
    return 'ActivityEntity(id: $id, title: $title, category: $category, time: $time, durationMinutes: $durationMinutes, location: $location, availableSpots: $availableSpots, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.availableSpots, availableSpots) ||
                other.availableSpots == availableSpots) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, category, time,
      durationMinutes, location, availableSpots, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityEntityImplCopyWith<_$ActivityEntityImpl> get copyWith =>
      __$$ActivityEntityImplCopyWithImpl<_$ActivityEntityImpl>(
          this, _$identity);
}

abstract class _ActivityEntity implements ActivityEntity {
  const factory _ActivityEntity(
      {required final String id,
      required final String title,
      required final String category,
      required final DateTime time,
      required final int durationMinutes,
      required final String location,
      required final int availableSpots,
      required final double price}) = _$ActivityEntityImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get category;
  @override
  DateTime get time;
  @override
  int get durationMinutes;
  @override
  String get location;
  @override
  int get availableSpots;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$ActivityEntityImplCopyWith<_$ActivityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
