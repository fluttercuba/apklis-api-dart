import 'package:json_annotation/json_annotation.dart';

part 'apklis_screenshot_model.g.dart';

@JsonSerializable()
class ApklisScreenshotModel {
  String description;
  @JsonKey(name: 'img')
  String image;

  ApklisScreenshotModel();

  factory ApklisScreenshotModel.fromJson(Map<String, dynamic> json) =>
      _$ApklisScreenshotModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisScreenshotModelToJson(this);
}
