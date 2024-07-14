import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shohdotdev_template/core/models/result/result.dart';

part 'model.freezed.dart';

@Freezed()
class {{state_name.pascalCase()}}State with _${{state_name.pascalCase()}}State {
  const factory {{state_name.pascalCase()}}State({
    //todo: change parameter
    required Result<String> parameter,
  }) = _{{state_name.pascalCase()}}State;

  //initial factory method
  factory {{state_name.pascalCase()}}State.initial() => const {{state_name.pascalCase()}}State(
        //todo: change parameter
        parameter: Result.none(),
      );
}

class Update{{state_name.pascalCase()}}StateAction {
  //todo: change parameter
  final Result<String>? parameter;

  const Update{{state_name.pascalCase()}}StateAction({
    //todo: change parameter
    this.parameter,
  });
}
