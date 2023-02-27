import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum ErrorTypeModel {
  @JsonValue('custom_1')
  custom1,
  @JsonValue('custom_2')
  custom2,
}
