import 'package:apklis_api/models/apklis_category_model.dart';
import 'package:apklis_api/models/apklis_developer_model.dart';
import 'package:apklis_api/models/apklis_release_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apklis_item_model.g.dart';

@JsonSerializable()
class ApklisItemModel {
  @JsonKey(name: 'package_name')
  String packageName;
  String name;
  @JsonKey(name: 'video_url')
  String videoUrl;
  @JsonKey(name: 'video_img')
  String videoImg;
  String description;
  String updated;
  double price;
  double rating;
  int sponsored;
  bool public;
  @JsonKey(name: 'with_db')
  bool withDb;
  bool deleted;
  @JsonKey(name: 'download_count')
  int downloadCount;
  @JsonKey(name: 'reviews_star_1')
  int reviewsStar1;
  @JsonKey(name: 'reviews_star_2')
  int reviewsStar2;
  @JsonKey(name: 'reviews_star_3')
  int reviewsStar3;
  @JsonKey(name: 'reviews_star_4')
  int reviewsStar4;
  @JsonKey(name: 'reviews_star_5')
  int reviewsStar5;
  @JsonKey(name: 'releases_count')
  int releasesCount;
  @JsonKey(name: 'reviews_count')
  int reviewsCount;
  List<ApklisCategoryModel> categories;
  bool announced;
  @JsonKey(name: 'last_release')
  ApklisReleaseModel lastRelease;
  ApklisDeveloperModel developer;

  ApklisItemModel();

  factory ApklisItemModel.fromJson(Map<String, dynamic> json) =>
      _$ApklisItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisItemModelToJson(this);
}
