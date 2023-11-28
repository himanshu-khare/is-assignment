import 'package:is_assignment/domain/entities/get_leads_data_model/lead.dart';

class GetLeadsDataModel {
  GetLeadsDataModel({this.success, this.status, this.message, this.data});

  factory GetLeadsDataModel.fromJson(Map<String, dynamic> json) {
    return GetLeadsDataModel(
      success: json['success'] as bool?,
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Lead.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
  bool? success;
  int? status;
  String? message;
  List<Lead>? data;

  Map<String, dynamic> toJson() => {
        'success': success,
        'status': status,
        'message': message,
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
