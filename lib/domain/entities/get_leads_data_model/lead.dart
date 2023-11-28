import 'package:is_assignment/domain/entities/get_leads_data_model/partner_details.dart';
import 'package:is_assignment/domain/entities/get_leads_data_model/policy_type_details.dart';

class Lead {
  Lead({
    this.id,
    this.name,
    this.email,
    this.status,
    this.mobile,
    this.leadNumber,
    this.policyTypeDetails,
    this.createdAt,
    this.complaintTypeName,
    this.assignToExpert,
    this.leadCreatedBy,
    this.insuranceCompanyName,
  });

  factory Lead.fromJson(Map<String, dynamic> json) => Lead(
        id: json['_id'] as String?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        status: json['status'] as String?,
        mobile: json['mobile'] as String?,
        leadNumber: json['leadNumber'] as String?,
        policyTypeDetails: json['policyTypeDetails'] == null
            ? null
            : PolicyTypeDetails.fromJson(
                json['policyTypeDetails'] as Map<String, dynamic>,
              ),
        createdAt: json['createdAt'] as int?,
        complaintTypeName: json['complaintTypeName'] as String?,
        assignToExpert: json['assignToExpert'] as String?,
        leadCreatedBy: json['leadCreatedBy'] as String?,
        insuranceCompanyName: json['insuranceCompanyName'] as String?,
      );
  String? id;
  String? name;
  String? email;
  String? status;
  String? mobile;
  String? leadNumber;
  PolicyTypeDetails? policyTypeDetails;
  int? createdAt;
  String? complaintTypeName;
  String? assignToExpert;
  String? leadCreatedBy;
  String? insuranceCompanyName;

  Map<String, dynamic> toJson() => {
        '_id': id,
        'name': name,
        'email': email,
        'status': status,
        'mobile': mobile,
        'leadNumber': leadNumber,
        'policyTypeDetails': policyTypeDetails?.toJson(),
        'createdAt': createdAt,
        'complaintTypeName': complaintTypeName,
        'assignToExpert': assignToExpert,
        'leadCreatedBy': leadCreatedBy,
        'insuranceCompanyName': insuranceCompanyName,
      };
}
