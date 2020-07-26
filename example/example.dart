import 'dart:convert';
import 'dart:io';

import 'package:apklis_api/apklis_api.dart';

void main() async {
  print('Introduce package name:');
  var packageName1 = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  var packageName2 = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  var apklisApi = ApklisApi();
  var model = await apklisApi.get([packageName1, packageName2]);
  if (model.isOk) {
    print(model.result.results.map((e) => e.name).join('\n'));
  } else {
    print(model.error);
  }
}
