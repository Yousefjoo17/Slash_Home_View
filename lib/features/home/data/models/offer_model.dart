class OfferModel {
  final int id;
  final String image;

  OfferModel({
    required this.id,
    required this.image,
  });

  factory OfferModel.fromJson(Map<String, dynamic> json) {
    return OfferModel(
      id: json['id'],
      image: json['image'],
    );
  }
}
