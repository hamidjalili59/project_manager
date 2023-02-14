// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_bloc_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleBlocModelAdapter extends TypeAdapter<ScheduleBlocModel> {
  @override
  final int typeId = 1;

  @override
  ScheduleBlocModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduleBlocModel();
  }

  @override
  void write(BinaryWriter writer, ScheduleBlocModel obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleBlocModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleBlocModel _$$_ScheduleBlocModelFromJson(Map<String, dynamic> json) =>
    _$_ScheduleBlocModel(
      xOffset: (json['xOffset'] as num?)?.toDouble() ?? 0,
      yOffset: (json['yOffset'] as num?)?.toDouble() ?? 0,
      taskID: json['taskID'] as String? ?? '',
      users: json['users'] as String? ?? '',
      backgroungColor: json['backgroungColor'] as int?,
      borderColor: json['borderColor'] as int?,
    );

Map<String, dynamic> _$$_ScheduleBlocModelToJson(
        _$_ScheduleBlocModel instance) =>
    <String, dynamic>{
      'xOffset': instance.xOffset,
      'yOffset': instance.yOffset,
      'taskID': instance.taskID,
      'users': instance.users,
      'backgroungColor': instance.backgroungColor,
      'borderColor': instance.borderColor,
    };
