// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apklis_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApklisItemModel _$ApklisItemModelFromJson(Map<String, dynamic> json) {
  return ApklisItemModel()
    ..packageName = json['package_name'] as String
    ..name = json['name'] as String
    ..videoUrl = json['video_url'] as String
    ..videoImg = json['video_img'] as String
    ..description = json['description'] as String
    ..updated = json['updated'] as String
    ..price = (json['price'] as num)?.toDouble()
    ..rating = (json['rating'] as num)?.toDouble()
    ..sponsored = json['sponsored'] as int
    ..public = json['public'] as bool
    ..withDb = json['with_db'] as bool
    ..deleted = json['deleted'] as bool
    ..downloadCount = json['download_count'] as int
    ..reviewsStar1 = json['reviews_star_1'] as int
    ..reviewsStar2 = json['reviews_star_2'] as int
    ..reviewsStar3 = json['reviews_star_3'] as int
    ..reviewsStar4 = json['reviews_star_4'] as int
    ..reviewsStar5 = json['reviews_star_5'] as int
    ..releasesCount = json['releases_count'] as int
    ..reviewsCount = json['reviews_count'] as int
    ..categories = (json['categories'] as List)
        ?.map((e) => e == null
            ? null
            : ApklisCategoryModel.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..announced = json['announced'] as bool
    ..lastRelease = json['last_release'] == null
        ? null
        : ApklisReleaseModel.fromJson(
            json['last_release'] as Map<String, dynamic>)
    ..developer = json['developer'] == null
        ? null
        : ApklisDeveloperModel.fromJson(
            json['developer'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ApklisItemModelToJson(ApklisItemModel instance) =>
    <String, dynamic>{
      'package_name': instance.packageName,
      'name': instance.name,
      'video_url': instance.videoUrl,
      'video_img': instance.videoImg,
      'description': instance.description,
      'updated': instance.updated,
      'price': instance.price,
      'rating': instance.rating,
      'sponsored': instance.sponsored,
      'public': instance.public,
      'with_db': instance.withDb,
      'deleted': instance.deleted,
      'download_count': instance.downloadCount,
      'reviews_star_1': instance.reviewsStar1,
      'reviews_star_2': instance.reviewsStar2,
      'reviews_star_3': instance.reviewsStar3,
      'reviews_star_4': instance.reviewsStar4,
      'reviews_star_5': instance.reviewsStar5,
      'releases_count': instance.releasesCount,
      'reviews_count': instance.reviewsCount,
      'categories': instance.categories,
      'announced': instance.announced,
      'last_release': instance.lastRelease,
      'developer': instance.developer,
    };
