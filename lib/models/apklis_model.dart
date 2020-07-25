import 'package:apklis_api/models/apklis_item_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apklis_model.g.dart';

@JsonSerializable()
class ApklisModel {
  int count;
  String next;
  String previous;
  List<ApklisItemModel> results;

  ApklisModel();

  factory ApklisModel.fromJson(Map<String, dynamic> json) =>
      _$ApklisModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisModelToJson(this);
}
