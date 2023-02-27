import 'dart:convert';

import 'package:cm_errors/cm_errors.dart';
import 'package:cm_errors/src/concrete/custom_error_1/data/ce_1_errors_model.dart';

void main() {
  final errorJson1 = json.decode('''
{
  "id": "322",
  "code": "400",
  "type": "custom_1",
  "data": {
    "errors": [
      {
        "id": "1",
        "type": "unknown",
        "value": "Unknown value"
      },
      {
        "id": "2",
        "type": "not_valid",
        "value": "Not valid value"
      }
    ]
  }
}
      ''');

  final errorJson2 = json.decode('''
{
  "id": "322",
  "code": "400",
  "type": "custom_2",
  "data": "String data"
}
      ''');

  final ce1 = ErrorModel.fromJson(errorJson1);
  print('${ce1.runtimeType}\n${ce1.toString()}');

  final ce2 = ErrorModel.fromJson(errorJson2);
  print('${ce2.runtimeType}\n${ce2.toString()}');

  final CE1ErrorsModel? data1 = (ce1 as CustomError1Model).data;
  final String? data2 = (ce2 as CustomError2Model).data;

  final ce1Typed = CustomError1Model.fromJson(errorJson1);
  print('${ce1Typed.runtimeType}\n${ce1Typed.toString()}');

  final ce2Typed = CustomError2Model.fromJson(errorJson1);
  print('${ce2Typed.runtimeType}\n${ce2Typed.toString()}');

  final CE1ErrorsModel? data1Typed = ce1Typed.data;
  final String? data2Typed = ce2Typed.data;
}
