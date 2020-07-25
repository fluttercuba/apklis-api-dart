import 'dart:convert';
import 'dart:io';

import 'package:apklis_api/apklis_api.dart';

void main() async {
  print('Introduce package name:');
  var packageName = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  var apklisApi = ApklisApi(packageName);
  var model = await apklisApi.get();
  if (model.isOk) {
    print(model.result.results.first.name);
  } else {
    print(model.error);
  }
}
