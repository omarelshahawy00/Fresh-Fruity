class ProductEntity {
  final String name;
  final num price;
  final String code;
  final String description;
  final bool isFeatured;

  String? imgUrl;

  ProductEntity({
    required this.isFeatured,
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    this.imgUrl,
  });
}
