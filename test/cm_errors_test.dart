import 'dart:convert';

import 'package:cm_errors/cm_errors.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('First Test', () {
      final errorJson = '''
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
      ''';

      final ce1 = ErrorModel.fromJson(json.decode(errorJson));
      print('${ce1.runtimeType}\n${ce1.toString()}');

      expect(ce1.runtimeType, CustomError1Model);
    });

    test('Second Test', () {
      final errorJson = '''
{
  "id": "322",
  "code": "400",
  "type": "custom_2",
  "data": "String data"
}
      ''';
      final ce2 = ErrorModel.fromJson(json.decode(errorJson));
      print('${ce2.runtimeType}\n${ce2.toString()}');

      expect(ce2.runtimeType, CustomError2Model);
    });
  });
}
