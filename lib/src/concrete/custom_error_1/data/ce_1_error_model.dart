import 'package:json_annotation/json_annotation.dart';

part 'ce_1_error_model.g.dart';

@JsonSerializable()
class CE1ErrorModel {
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'value')
  final String value;

  const CE1ErrorModel({
    required this.id,
    required this.type,
    required this.value,
  });

  factory CE1ErrorModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CE1ErrorModelFromJson(json);

  @override
  String toString() {
    return 'id: $id, type: $type, value: $value';
  }
}
