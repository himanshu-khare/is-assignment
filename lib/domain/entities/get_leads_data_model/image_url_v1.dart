class ImageUrlV1 {
  ImageUrlV1({this.selectedImageUrl, this.unselectedImageUrl});

  factory ImageUrlV1.fromJson(Map<String, dynamic> json) => ImageUrlV1(
        selectedImageUrl: json['selectedImageUrl'] as String?,
        unselectedImageUrl: json['unselectedImageUrl'] as String?,
      );
  String? selectedImageUrl;
  String? unselectedImageUrl;

  Map<String, dynamic> toJson() => {
        'selectedImageUrl': selectedImageUrl,
        'unselectedImageUrl': unselectedImageUrl,
      };
}
