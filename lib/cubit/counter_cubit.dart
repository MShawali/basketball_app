import 'package:counter_increment_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int pointAIncrement = 0;
  int pointBIncrement = 0;

  teamAIncrement({required String team, required int buttomNumber}) {
    if (team == "A") {
      pointAIncrement += buttomNumber;
      emit(CounterAIncrementState());
    } else {
      pointBIncrement += buttomNumber;
      emit(CounterBIncrementState());
    }
  }
}
