import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

class {{state_name.pascalCase()}}StateMw extends MiddlewareClass<AppState> {
  @override
  dynamic call(Store<AppState> store, dynamic action, NextDispatcher next) {
    return switch (action) {
      //todo: add your {{state_name.pascalCase()}}State actions here
      //from core/redux/states/{{state_name.snakeCase()}}_state/actions/
      (TestAction _) => action.payload(store.state, next),
      _ => next(action),
    };
  }
}
