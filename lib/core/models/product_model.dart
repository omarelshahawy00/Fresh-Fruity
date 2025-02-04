import 'package:ecommerce_app/core/entities/product_entity.dart';

class ProductModel {
  final String name;
  final num price;
  final String code;
  final String description;
  final bool isFeatured;

  final String? imgUrl;
  final num sellingCount;

  ProductModel({
    required this.isFeatured,
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    this.imgUrl,
    required this.sellingCount,
  });

  ProductEntity toProductEntity() {
    return ProductEntity(
      name: name,
      price: price,
      code: code,
      description: description,
      isFeatured: isFeatured,
      imgUrl: imgUrl,
    );
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      price: json['price'],
      code: json['code'],
      description: json['description'],
      isFeatured: json['isFeatured'],
      imgUrl: json['imgUrl'],
      sellingCount: json['sellingCount'],
    );
  }

  toJson() {
    return {
      'name': name,
      'price': price,
      'code': code,
      'description': description,
      'isFeatured': isFeatured,
      'imgUrl': imgUrl,
      'sellingCount': sellingCount,
    };
  }
}
