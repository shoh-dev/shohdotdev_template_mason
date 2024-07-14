import 'package:redux/redux.dart';
import 'package:shohdotdev_template/core/core.dart';
import 'package:shohdotdev_template/core/models/models.dart';
import 'package:shohdotdev_template/core/redux/app/default_action.dart';
import 'package:shohdotdev_template/core/redux/states.dart';

class TestAction extends DefaultAction<void> {
  TestAction({super.setLoadingState});

  @override
  Future<Result<void>> disposeState() async {
    dispatcher(const UpdateCounterStateAction(parameter: Result.none()));
    return const Result.none();
  }

  @override
  Future<void> onLoading() async {
    if (setLoadingState) {
      dispatcher(const UpdateCounterStateAction(parameter: Result.loading()));
    }
  }

  @override
  Future<Result<void>> onFetch(AppState state, NextDispatcher next) async {
      next(UpdateCounterStateAction(parameter: Result.none()));
  }

  @override
  Future<Result<void>> payload(AppState state, NextDispatcher next) async {
    await onLoading();

    return await onFetch(state, next);
  }
}
