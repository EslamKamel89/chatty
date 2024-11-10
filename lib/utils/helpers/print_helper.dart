import 'package:flutter/foundation.dart';

T pr<T>(T value, String? title) {
  var message = '<<Eslam dev>> ';
  if (title != null) {
    message = '<<Eslam dev - $title>>';
  }
  if (kDebugMode) {
    print('$message $value');
  }
  return value;
}
