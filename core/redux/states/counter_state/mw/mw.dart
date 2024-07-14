import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

class CounterStateMw extends MiddlewareClass<AppState> {
  @override
  dynamic call(Store<AppState> store, dynamic action, NextDispatcher next) {
    return switch (action) {
      //todo: add your CounterState actions here
      //from core/redux/states/counter_state/actions/
      (TestAction _) => action.payload(store.state, next),
      _ => next(action),
    };
  }
}
