import 'package:flutter/foundation.dart';

class PHResult<T> {
  T data;
  String errorMessage;
  String errorCode;
  bool hasError;

  PHResult.success(this.data) : hasError = false;

  PHResult.failure({@required this.errorCode, @required this.errorMessage})
      : hasError = true;
}
