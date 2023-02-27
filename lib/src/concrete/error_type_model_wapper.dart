import 'package:cm_errors/src/concrete/error_type_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_type_model_wapper.g.dart';

@JsonSerializable()
class ErrorTypeModelWapper {
  @JsonKey(name: 'type')
  final ErrorTypeModel? type;

  const ErrorTypeModelWapper({
    required this.type,
  });

  factory ErrorTypeModelWapper.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ErrorTypeModelWapperFromJson(json);
}
