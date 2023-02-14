// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_bloc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleBlocModel _$ScheduleBlocModelFromJson(Map<String, dynamic> json) {
  return _ScheduleBlocModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleBlocModel {
  @HiveField(0, defaultValue: 0)
  double? get xOffset => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: 0)
  double? get yOffset => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: '')
  String? get taskID => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: '')
  String? get users => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: 0xff101010)
  int? get backgroungColor => throw _privateConstructorUsedError;
  @HiveField(5, defaultValue: 0xff101010)
  int? get borderColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleBlocModelCopyWith<ScheduleBlocModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleBlocModelCopyWith<$Res> {
  factory $ScheduleBlocModelCopyWith(
          ScheduleBlocModel value, $Res Function(ScheduleBlocModel) then) =
      _$ScheduleBlocModelCopyWithImpl<$Res, ScheduleBlocModel>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) double? xOffset,
      @HiveField(1, defaultValue: 0) double? yOffset,
      @HiveField(2, defaultValue: '') String? taskID,
      @HiveField(3, defaultValue: '') String? users,
      @HiveField(4, defaultValue: 0xff101010) int? backgroungColor,
      @HiveField(5, defaultValue: 0xff101010) int? borderColor});
}

/// @nodoc
class _$ScheduleBlocModelCopyWithImpl<$Res, $Val extends ScheduleBlocModel>
    implements $ScheduleBlocModelCopyWith<$Res> {
  _$ScheduleBlocModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xOffset = freezed,
    Object? yOffset = freezed,
    Object? taskID = freezed,
    Object? users = freezed,
    Object? backgroungColor = freezed,
    Object? borderColor = freezed,
  }) {
    return _then(_value.copyWith(
      xOffset: freezed == xOffset
          ? _value.xOffset
          : xOffset // ignore: cast_nullable_to_non_nullable
              as double?,
      yOffset: freezed == yOffset
          ? _value.yOffset
          : yOffset // ignore: cast_nullable_to_non_nullable
              as double?,
      taskID: freezed == taskID
          ? _value.taskID
          : taskID // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroungColor: freezed == backgroungColor
          ? _value.backgroungColor
          : backgroungColor // ignore: cast_nullable_to_non_nullable
              as int?,
      borderColor: freezed == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleBlocModelCopyWith<$Res>
    implements $ScheduleBlocModelCopyWith<$Res> {
  factory _$$_ScheduleBlocModelCopyWith(_$_ScheduleBlocModel value,
          $Res Function(_$_ScheduleBlocModel) then) =
      __$$_ScheduleBlocModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) double? xOffset,
      @HiveField(1, defaultValue: 0) double? yOffset,
      @HiveField(2, defaultValue: '') String? taskID,
      @HiveField(3, defaultValue: '') String? users,
      @HiveField(4, defaultValue: 0xff101010) int? backgroungColor,
      @HiveField(5, defaultValue: 0xff101010) int? borderColor});
}

/// @nodoc
class __$$_ScheduleBlocModelCopyWithImpl<$Res>
    extends _$ScheduleBlocModelCopyWithImpl<$Res, _$_ScheduleBlocModel>
    implements _$$_ScheduleBlocModelCopyWith<$Res> {
  __$$_ScheduleBlocModelCopyWithImpl(
      _$_ScheduleBlocModel _value, $Res Function(_$_ScheduleBlocModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xOffset = freezed,
    Object? yOffset = freezed,
    Object? taskID = freezed,
    Object? users = freezed,
    Object? backgroungColor = freezed,
    Object? borderColor = freezed,
  }) {
    return _then(_$_ScheduleBlocModel(
      xOffset: freezed == xOffset
          ? _value.xOffset
          : xOffset // ignore: cast_nullable_to_non_nullable
              as double?,
      yOffset: freezed == yOffset
          ? _value.yOffset
          : yOffset // ignore: cast_nullable_to_non_nullable
              as double?,
      taskID: freezed == taskID
          ? _value.taskID
          : taskID // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroungColor: freezed == backgroungColor
          ? _value.backgroungColor
          : backgroungColor // ignore: cast_nullable_to_non_nullable
              as int?,
      borderColor: freezed == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleBlocModel implements _ScheduleBlocModel {
  _$_ScheduleBlocModel(
      {@HiveField(0, defaultValue: 0) this.xOffset = 0,
      @HiveField(1, defaultValue: 0) this.yOffset = 0,
      @HiveField(2, defaultValue: '') this.taskID = '',
      @HiveField(3, defaultValue: '') this.users = '',
      @HiveField(4, defaultValue: 0xff101010) this.backgroungColor,
      @HiveField(5, defaultValue: 0xff101010) this.borderColor});

  factory _$_ScheduleBlocModel.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleBlocModelFromJson(json);

  @override
  @JsonKey()
  @HiveField(0, defaultValue: 0)
  final double? xOffset;
  @override
  @JsonKey()
  @HiveField(1, defaultValue: 0)
  final double? yOffset;
  @override
  @JsonKey()
  @HiveField(2, defaultValue: '')
  final String? taskID;
  @override
  @JsonKey()
  @HiveField(3, defaultValue: '')
  final String? users;
  @override
  @HiveField(4, defaultValue: 0xff101010)
  final int? backgroungColor;
  @override
  @HiveField(5, defaultValue: 0xff101010)
  final int? borderColor;

  @override
  String toString() {
    return 'ScheduleBlocModel(xOffset: $xOffset, yOffset: $yOffset, taskID: $taskID, users: $users, backgroungColor: $backgroungColor, borderColor: $borderColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleBlocModel &&
            (identical(other.xOffset, xOffset) || other.xOffset == xOffset) &&
            (identical(other.yOffset, yOffset) || other.yOffset == yOffset) &&
            (identical(other.taskID, taskID) || other.taskID == taskID) &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.backgroungColor, backgroungColor) ||
                other.backgroungColor == backgroungColor) &&
            (identical(other.borderColor, borderColor) ||
                other.borderColor == borderColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, xOffset, yOffset, taskID, users,
      backgroungColor, borderColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleBlocModelCopyWith<_$_ScheduleBlocModel> get copyWith =>
      __$$_ScheduleBlocModelCopyWithImpl<_$_ScheduleBlocModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleBlocModelToJson(
      this,
    );
  }
}

abstract class _ScheduleBlocModel implements ScheduleBlocModel {
  factory _ScheduleBlocModel(
          {@HiveField(0, defaultValue: 0) final double? xOffset,
          @HiveField(1, defaultValue: 0) final double? yOffset,
          @HiveField(2, defaultValue: '') final String? taskID,
          @HiveField(3, defaultValue: '') final String? users,
          @HiveField(4, defaultValue: 0xff101010) final int? backgroungColor,
          @HiveField(5, defaultValue: 0xff101010) final int? borderColor}) =
      _$_ScheduleBlocModel;

  factory _ScheduleBlocModel.fromJson(Map<String, dynamic> json) =
      _$_ScheduleBlocModel.fromJson;

  @override
  @HiveField(0, defaultValue: 0)
  double? get xOffset;
  @override
  @HiveField(1, defaultValue: 0)
  double? get yOffset;
  @override
  @HiveField(2, defaultValue: '')
  String? get taskID;
  @override
  @HiveField(3, defaultValue: '')
  String? get users;
  @override
  @HiveField(4, defaultValue: 0xff101010)
  int? get backgroungColor;
  @override
  @HiveField(5, defaultValue: 0xff101010)
  int? get borderColor;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleBlocModelCopyWith<_$_ScheduleBlocModel> get copyWith =>
      throw _privateConstructorUsedError;
}
