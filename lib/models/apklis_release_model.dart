import 'package:apklis_api/models/apklis_abi_model.dart';
import 'package:apklis_api/models/apklis_permission_model.dart';
import 'package:apklis_api/models/apklis_screenshot_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apklis_release_model.g.dart';

@JsonSerializable()
class ApklisReleaseModel {
  List<ApklisAbiModel> abi;
  @JsonKey(name: 'no_abi')
  bool noAbi;
  @JsonKey(name: 'version_name')
  String versionName;
  @JsonKey(name: 'package_name')
  String packageName;
  @JsonKey(name: 'app_name')
  String appName;
  @JsonKey(name: 'version_sdk_name')
  String versionSdkName;
  @JsonKey(name: 'version_target_sdk_name')
  String versionTargetSdkName;
  List<ApklisPermissionModel> permissions;
  List<ApklisScreenshotModel> screenshots;
  String changelog;
  @JsonKey(name: 'version_code')
  int versionCode;
  String published;
  String sha256;
  String size;
  String icon;
  bool public;
  bool beta;
  @JsonKey(name: 'version_sdk')
  String versionSdk;
  @JsonKey(name: 'version_target_sdk')
  String versionTargetSdk;
  bool deleted;

  ApklisReleaseModel();

  factory ApklisReleaseModel.fromJson(Map<String, dynamic> json) =>
      _$ApklisReleaseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisReleaseModelToJson(this);
}
