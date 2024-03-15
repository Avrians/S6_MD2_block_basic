import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<Counterevent, int> {
  CounterBloc() : super(0) {
    on<CountereventIncrement>((event, emit) {
      emit(state + 1);
    });

    on<CountereventDecrement>((event, emit) {
      emit(state - 1);
    });
  }
}