// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_type_model_wapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorTypeModelWapper _$ErrorTypeModelWapperFromJson(
        Map<String, dynamic> json) =>
    ErrorTypeModelWapper(
      type: $enumDecodeNullable(_$ErrorTypeModelEnumMap, json['type']),
    );

Map<String, dynamic> _$ErrorTypeModelWapperToJson(
        ErrorTypeModelWapper instance) =>
    <String, dynamic>{
      'type': _$ErrorTypeModelEnumMap[instance.type],
    };

const _$ErrorTypeModelEnumMap = {
  ErrorTypeModel.custom1: 'custom_1',
  ErrorTypeModel.custom2: 'custom_2',
};
