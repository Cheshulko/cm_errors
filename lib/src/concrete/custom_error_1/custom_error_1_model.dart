import 'package:cm_errors/src/concrete/custom_error_1/data/ce_1_errors_model.dart';
import 'package:cm_errors/src/core/error_model.dart';

class CustomError1Model extends ErrorModel<CE1ErrorsModel?> {
  CustomError1Model._fromBase(ErrorModel<CE1ErrorsModel?> errorBase)
      : super(
          id: errorBase.id,
          code: errorBase.code,
          type: errorBase.type,
          data: errorBase.data,
        );

  @override
  CE1ErrorsModel? get data => super.data;

  factory CustomError1Model.fromJson(Map<String, dynamic> json) {
    return CustomError1Model._fromBase(
      ErrorModel<CE1ErrorsModel?>.fromJsonT(
        json,
        (dataJson) => dataJson is Map<String, dynamic>
            ? CE1ErrorsModel.fromJson(dataJson)
            : null,
      ),
    );
  }
}
