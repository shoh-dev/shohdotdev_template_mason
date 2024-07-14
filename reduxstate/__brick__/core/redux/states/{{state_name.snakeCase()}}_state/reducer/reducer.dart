import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/redux/states/{{state_name.snakeCase()}}_state/model/model.dart';

class {{state_name.pascalCase()}}StateReducer {
  {{state_name.pascalCase()}}State _update({{state_name.pascalCase()}}State state, Update{{state_name.pascalCase()}}StateAction action) {
    return state.copyWith(
      parameter: action.parameter ?? state.parameter,
    );
  }

  late Reducer<{{state_name.pascalCase()}}State> reducer = combineReducers<{{state_name.pascalCase()}}State>([
    TypedReducer<{{state_name.pascalCase()}}State, Update{{state_name.pascalCase()}}StateAction>(_update).call,
  ]);
}
