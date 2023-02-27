// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ce_1_errors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CE1ErrorsModel _$CE1ErrorsModelFromJson(Map<String, dynamic> json) =>
    CE1ErrorsModel(
      errors: (json['errors'] as List<dynamic>)
          .map((e) => CE1ErrorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CE1ErrorsModelToJson(CE1ErrorsModel instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
