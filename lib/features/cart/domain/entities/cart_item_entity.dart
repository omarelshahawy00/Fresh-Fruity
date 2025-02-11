import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:equatable/equatable.dart';

class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int count;

  CartItemEntity({required this.productEntity, this.count = 0});

  increaseCount() {
    count++;
  }

  decreaseCount() {
    count--;
  }

  num calculateTotalWeight() {
    return productEntity.unitAmount * count;
  }

  num calculateTotalPrice() {
    return productEntity.price * count;
  }

  @override
  List<Object?> get props => throw [productEntity];
}
