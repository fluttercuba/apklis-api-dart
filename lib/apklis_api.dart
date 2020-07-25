library apklis_api;

import 'dart:convert';

import 'package:apklis_api/models/apklis_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart';

class ApklisApi {
  static const URL = 'https://api.apklis.cu/v2/application/?package_name=';
  final String url;
  final String packageName;
  final Dio dioClient;
  final BaseClient httpClient;

  ApklisApi(this.packageName, {this.dioClient, this.httpClient})
      : url = URL + packageName;

  Future<ApklisApiResult> get() async {
    if (httpClient != null) {
      return await getWithHttp();
    } else if (dioClient != null) {
      return await getWithDio();
    } else {
      return await getWithHttp(httpClient: Client());
    }
  }

  Future<ApklisApiResult> getWithDio({Dio dioClient}) async {
    dioClient ??= this.dioClient;
    if (dioClient == null) {
      return ApklisApiResult(
        isOk: false,
        error: 'Dio client is null',
      );
    }
    try {
      var response = await dioClient.get(url);
      if (response.statusCode == 200) {
        var json = response.data as Map<String, dynamic>;
        var model = ApklisModel.fromJson(json);
        return ApklisApiResult(result: model);
      } else {
        return ApklisApiResult(
          isOk: false,
          error: response.statusMessage,
        );
      }
    } catch (e) {
      // TODO: Improve exception report
      return ApklisApiResult(
        isOk: false,
        error: e.toString(),
      );
    }
  }

  Future<ApklisApiResult> getWithHttp({BaseClient httpClient}) async {
    httpClient ??= this.httpClient;
    if (httpClient == null) {
      return ApklisApiResult(
        isOk: false,
        error: 'Http client is null',
      );
    }
    try {
      var response = await httpClient.get(url);
      if (response.statusCode == 200) {
        var text = utf8.decode(response.bodyBytes);
        var json = jsonDecode(text);
        var model = ApklisModel.fromJson(json);
        var result = ApklisApiResult(result: model);
        return result;
      } else {
        return ApklisApiResult(
          isOk: false,
          error: response.reasonPhrase,
        );
      }
    } catch (e) {
      print(e);
      // TODO: Improve exception report
      return ApklisApiResult(
        isOk: false,
        error: e.toString(),
      );
    }
  }
}

class ApklisApiResult {
  final ApklisModel result;
  final bool isOk;
  final String error;

  const ApklisApiResult({this.result, this.isOk = true, this.error});
}
