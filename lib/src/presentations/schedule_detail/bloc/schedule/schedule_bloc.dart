import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_state.dart';
part 'schedule_event.dart';
part 'schedule_bloc.freezed.dart';

class ScheduleBloc extends Bloc<ScheduleEvent,ScheduleState>{
  ScheduleBloc() : super(const ScheduleState.initial()){
    
  }
}