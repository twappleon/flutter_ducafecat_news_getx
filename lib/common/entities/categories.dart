/// 新闻分类 response
class CategoryResponseEntity {
  String requirementId;
  String requirementName;

  CategoryResponseEntity({
    required this.requirementId,
    required this.requirementName,
  });

  factory CategoryResponseEntity.fromJson(Map<String, dynamic> json) =>
      CategoryResponseEntity(
        requirementId: json["requirementId"],
        requirementName: json["requirementName"],
      );

  Map<String, dynamic> toJson() => {
        "requirementId": requirementId,
        "requirementName": requirementName,
      };
}
