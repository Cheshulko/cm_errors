import 'package:cm_errors/src/core/error_model.dart';

class CustomError2Model extends ErrorModel<String?> {
  CustomError2Model._fromBase(ErrorModel<String?> errorBase)
      : super(
          id: errorBase.id,
          code: errorBase.code,
          type: errorBase.type,
          data: errorBase.data,
        );

  factory CustomError2Model.fromJson(Map<String, dynamic> json) {
    return CustomError2Model._fromBase(
      ErrorModel<String?>.fromJsonT(
        json,
        (dataJson) => dataJson is String ? dataJson : null,
      ),
    );
  }
}
