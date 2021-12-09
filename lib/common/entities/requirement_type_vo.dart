import 'package:lombok/lombok.dart';

@data
class RequirementTypeListVO{
  late String requirementTypeId;
  late String name;

  RequirementTypeListVO({requirementTypeId, name});

  factory RequirementTypeListVO.fromJson(Map<String, dynamic> json) =>
      RequirementTypeListVO(
        requirementTypeId: json["requirementTypeId"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
    "requirementTypeId": requirementTypeId,
    "name": name,
  };
}