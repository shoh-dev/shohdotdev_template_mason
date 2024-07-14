import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/core.dart';
import 'package:shohdotdev_template/core/models/models.dart';
import 'package:shohdotdev_template/core/redux/app/default_action.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

class TestAction extends DefaultAction<void> {
  TestAction({super.setLoadingState});

  @override
  Future<Result<void>> disposeState() async {
    dispatcher(const Update{{state_name.pascalCase()}}StateAction(parameter: Result.none()));
    return const Result.none();
  }

  @override
  Future<void> onLoading() async {
    if (setLoadingState) {
      dispatcher(const Update{{state_name.pascalCase()}}StateAction(parameter: Result.loading()));
    }
  }

  @override
  Future<Result<void>> onFetch(AppState state, NextDispatcher next) async {
      next(Update{{state_name.pascalCase()}}StateAction(parameter: Result.none()));
  }

  @override
  Future<Result<void>> payload(AppState state, NextDispatcher next) async {
    await onLoading();

    return await onFetch(state, next);
  }
}
