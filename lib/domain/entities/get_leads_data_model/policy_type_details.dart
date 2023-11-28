import 'package:is_assignment/core/constants/constants.dart';
import 'package:is_assignment/domain/entities/get_leads_data_model/image_url_v1.dart';
import 'package:is_assignment/gen/assets.gen.dart';

class PolicyTypeDetails {
  PolicyTypeDetails({
    this.id,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.v,
    this.hindiName,
    this.imageUrl,
    this.imageUrlV1,
  });

  factory PolicyTypeDetails.fromJson(Map<String, dynamic> json) {
    return PolicyTypeDetails(
      id: json['_id'] as String?,
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] as int?,
      updatedAt: json['updatedAt'] as int?,
      name: json['name'] as String?,
      v: json['__v'] as int?,
      hindiName: json['hindiName'] as String?,
      imageUrl: json['imageUrl'] as String?,
      imageUrlV1: json['imageUrlV1'] == null
          ? null
          : ImageUrlV1.fromJson(json['imageUrlV1'] as Map<String, dynamic>),
    );
  }
  String? id;
  bool? isActive;
  int? createdAt;
  int? updatedAt;
  String? name;
  int? v;
  String? hindiName;
  String? imageUrl;
  ImageUrlV1? imageUrlV1;

  Map<String, dynamic> toJson() => {
        '_id': id,
        'isActive': isActive,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'name': name,
        '__v': v,
        'hindiName': hindiName,
        'imageUrl': imageUrl,
        'imageUrlV1': imageUrlV1?.toJson(),
      };

  String policyTypeImg() {
    switch (id) {
      case ApiConstants.healthInsuranceId:
        return Assets.images.healthInsurance;
      case ApiConstants.lifeInsuranceId:
        return Assets.images.lifeInsurance;
      default:
        return Assets.images.generalInsurance;
    }
  }
}
