import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_bloc_model.freezed.dart';
part 'schedule_bloc_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: false,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)
@HiveType(typeId: 1)
class ScheduleBlocModel with _$ScheduleBlocModel {
  factory ScheduleBlocModel({
    @Default(0) @HiveField(0, defaultValue: 0) double? xOffset,
    @Default(0) @HiveField(1, defaultValue: 0) double? yOffset,
    @Default('') @HiveField(2, defaultValue: '') String? taskID,
    @Default('') @HiveField(3, defaultValue: '') String? users,
    @HiveField(4, defaultValue: 0xff101010) int? backgroungColor,
    @HiveField(5, defaultValue: 0xff101010) int? borderColor,
  }) = _ScheduleBlocModel;

  factory ScheduleBlocModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleBlocModelFromJson(json);
}
