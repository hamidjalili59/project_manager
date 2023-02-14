part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.initial() = _Initial;
  const factory ScheduleState.loadInProgress() = _LoadInProgress;
  const factory ScheduleState.configSucess() = _ConfigSucess;
}