import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String name;
  final num price;
  final String code;
  final String description;
  final bool isFeatured;
  String? imgUrl;
  final num unitAmount;

  ProductEntity({
    required this.unitAmount,
    required this.isFeatured,
    required this.name,
    required this.price,
    required this.code,
    required this.description,
    this.imgUrl,
  });

  @override
  List<Object?> get props => [code];
}
