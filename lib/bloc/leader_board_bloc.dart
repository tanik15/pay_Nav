import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paynav/bloc/leader_board_event.dart';
import 'package:paynav/bloc/leader_board_state.dart';

class LeaderBoardBloc extends Bloc<LeaderBoardEvent, LeaderBoardState> {
  LeaderBoardBloc() : super(LeaderBoardInitialState()) {
    on<ThisMonthButtonPressEvent>(
        (event, emit) => emit(ThisMonthButtonChangeState()));

    on<WeekButtonPressEvent>((event, emit) => emit(WeekButtonChangeState()));
    on<LastMonthButtonPressEvent>(
        (event, emit) => emit(LastMonthButtonChangeState()));

    on<PointTextButtonPressEvent>((event, emit) {
      print("Point button Press");
      emit(PointButtonChangeState());
    });

    on<PrizeTextButtonPressEvent>((event, emit) {
      print("PrizeButton press");
      emit(PrizeButtonChangeState());
    });

    on<SettingButtonPressEvent>((event, emit) {
      print('Setting Button Press');
      emit(SettingButtonChangeState());
    });

    on<MyStatusButtonPressEvent>((event, emit) {
      print('Setting Button Press');
      emit(MyStatusButtonChangeState());
    });
  }
}
