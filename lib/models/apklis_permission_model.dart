import 'package:json_annotation/json_annotation.dart';

part 'apklis_permission_model.g.dart';

@JsonSerializable()
class ApklisPermissionModel {
  String icon;
  String description;
  String name;

  ApklisPermissionModel();

  factory ApklisPermissionModel.fromJson(Map<String, dynamic> json) =>
      _$ApklisPermissionModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisPermissionModelToJson(this);
}
