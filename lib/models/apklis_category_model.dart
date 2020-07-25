import 'package:json_annotation/json_annotation.dart';

part 'apklis_category_model.g.dart';

@JsonSerializable()
class ApklisCategoryModel {
  int id;
  String name;
  String icon;
  String group;
  @JsonKey(name: 'icon_url')
  String iconUrl;

  ApklisCategoryModel();

  factory ApklisCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ApklisCategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisCategoryModelToJson(this);
}
