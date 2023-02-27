// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel<T> _$ErrorModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ErrorModel<T>(
      id: json['id'] as String?,
      code: json['code'] as String?,
      type: $enumDecodeNullable(_$ErrorTypeModelEnumMap, json['type']),
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$ErrorModelToJson<T>(
  ErrorModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'type': _$ErrorTypeModelEnumMap[instance.type],
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

const _$ErrorTypeModelEnumMap = {
  ErrorTypeModel.custom1: 'custom_1',
  ErrorTypeModel.custom2: 'custom_2',
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
