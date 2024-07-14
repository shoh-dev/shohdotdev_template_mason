import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/redux/states/counter_state/model/model.dart';

class CounterStateReducer {
  CounterState _update(CounterState state, UpdateCounterStateAction action) {
    return state.copyWith(
      parameter: action.parameter ?? state.parameter,
    );
  }

  late Reducer<CounterState> reducer = combineReducers<CounterState>([
    TypedReducer<CounterState, UpdateCounterStateAction>(_update).call,
  ]);
}
