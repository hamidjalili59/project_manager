part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.setBlocConfig(
    String scheduleBloc,
  ) = _SendDeviceConfig;
}