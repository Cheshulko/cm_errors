import 'package:cm_errors/src/concrete/custom_error_1/data/ce_1_error_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ce_1_errors_model.g.dart';

@JsonSerializable()
class CE1ErrorsModel {
  @JsonKey(name: 'errors')
  final List<CE1ErrorModel> errors;

  const CE1ErrorsModel({
    required this.errors,
  });

  factory CE1ErrorsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CE1ErrorsModelFromJson(json);

  @override
  String toString() {
    return 'errors: [${errors.map((error) => error.toString())}]';
  }
}
