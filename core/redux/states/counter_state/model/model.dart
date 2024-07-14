import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';

part 'model.freezed.dart';

@Freezed()
class CounterState with _$CounterState {
  const factory CounterState({
    //todo: change parameter
    required Result<String> parameter,
  }) = _CounterState;

  //initial factory method
  factory CounterState.initial() => const CounterState(
        //todo: change parameter
        parameter: Result.none(),
      );
}

class UpdateCounterStateAction {
  //todo: change parameter
  final Result<String>? parameter;

  const UpdateCounterStateAction({
    //todo: change parameter
    this.parameter,
  });
}
