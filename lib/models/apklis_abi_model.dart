import 'package:json_annotation/json_annotation.dart';

part 'apklis_abi_model.g.dart';

@JsonSerializable()
class ApklisAbiModel {
  String abi;

  ApklisAbiModel();

  factory ApklisAbiModel.fromJson(Map<String, dynamic> json) =>
      _$ApklisAbiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisAbiModelToJson(this);
}
