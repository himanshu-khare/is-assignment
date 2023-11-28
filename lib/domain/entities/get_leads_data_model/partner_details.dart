class PartnerDetails {
  PartnerDetails({this.companyName, this.name});

  factory PartnerDetails.fromJson(Map<String, dynamic> json) {
    return PartnerDetails(
      companyName: json['companyName'] as List<String>?,
      name: json['name'] as String?,
    );
  }
  List<String>? companyName;
  String? name;

  Map<String, dynamic> toJson() => {
        'companyName': companyName,
        'name': name,
      };
}
