import 'package:json_annotation/json_annotation.dart';

part 'apklis_developer_model.g.dart';

@JsonSerializable()
class ApklisDeveloperModel {
  String username;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  @JsonKey(name: '')
  String fullname;
  String avatar;
  String background;
  int apps;
  @JsonKey(name: 'is_active')
  bool isActive;
  String description;

  ApklisDeveloperModel();

  factory ApklisDeveloperModel.fromJson(Map<String, dynamic> json) =>
      _$ApklisDeveloperModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisDeveloperModelToJson(this);
}
