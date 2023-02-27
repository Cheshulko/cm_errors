import 'package:cm_errors/src/concrete/error_type_model_wapper.dart';
import 'package:cm_errors/src/concrete/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ErrorModel<T> {
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'type')
  final ErrorTypeModel? type;
  @JsonKey(name: 'data')
  final T? data;

  ErrorModel({
    this.id,
    this.code,
    this.type,
    this.data,
  });

  factory ErrorModel.fromJsonT(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ErrorModelFromJson(json, fromJsonT);

  static ErrorModel? fromJson(Map<String, dynamic> json) {
    final typeWrapped = ErrorTypeModelWapper.fromJson(json);
    switch (typeWrapped.type) {
      case ErrorTypeModel.custom1:
        return CustomError1Model.fromJson(json);
      case ErrorTypeModel.custom2:
        return CustomError2Model.fromJson(json);
      case null:
        return null;
    }
  }

  @override
  String toString() {
    return '''
id:   $id,
code: $code,
type: $type,
data: $data,
''';
  }
}
