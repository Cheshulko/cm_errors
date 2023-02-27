Architectural approach to datasource`s json error parsing & handling with dynamic data

## Features

Let`s support such error types:
`error_type_model.dart`

```dart
@JsonEnum()
enum ErrorTypeModel {
  @JsonValue('custom_1')
  custom1,
  @JsonValue('custom_2')
  custom2,
}
```
with corresponding jsons
* custom_1 error`s json
```json
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
```
* custom_2 error`s json
```json
{
  "id": "322",
  "code": "400",
  "type": "custom_2",
  "data": "String data"
}
```

`type` from json should be mapped to `ErrorTypeModel` type

## Getting started

Add any custom error`s type to `ErrorTypeModel` enum in `error_type_model.dart`
For each type in `ErrorTypeModel` we should have model class (see `custom_error_1_model.dart` example)
```dart
class MyCustomErrorModel extends ErrorModel<MyCustomErrorModelData?> {
...
}
```
with `fromJsonT` dynamic data`s type parser (see `CustomError1Model.fromJson` in `custom_error_1_model.dart`)
```dart 
T Function(Object? json) fromJsonT
```

## Usage

```dart
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

  // Here we need to manually cast ce1 to CustomError1Model to get the proper data class (not dynamic)
  final ce1 = ErrorModel.fromJson(errorJson1);
  final ce2 = ErrorModel.fromJson(errorJson2);
  
  final CE1ErrorsModel? data1 = (ce1 as CustomError1Model).data;
  final String? data2 = (ce2 as CustomError2Model).data;

  // Here cast is not needed
  final ce1Typed = CustomError1Model.fromJson(errorJson1);
  final ce2Typed = CustomError2Model.fromJson(errorJson1);
  
  final CE1ErrorsModel? data1Typed = ce1Typed.data;
  final String? data2Typed = ce2Typed.data;
```

