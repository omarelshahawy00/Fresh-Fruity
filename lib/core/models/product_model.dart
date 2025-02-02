import 'dart:io';
import 'package:ecommerce_app/core/entities/product_entity.dart';

class ProductModel {
  final String name;
  final num price;
  final String code;
  final String description;
  final bool isFeatured;
  final File? imageFile;
  final String? imgUrl;

  ProductModel({
    required this.isFeatured,
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    this.imageFile,
    this.imgUrl,
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

  toJson() {
    return {
      'name': name,
      'price': price,
      'code': code,
      'description': description,
      'isFeatured': isFeatured,
      'imgUrl': imgUrl,
    };
  }
}
