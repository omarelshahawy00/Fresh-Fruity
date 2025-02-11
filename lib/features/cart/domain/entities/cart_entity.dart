import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItemsList;
  CartEntity({required this.cartItemsList});

  addItemToCart(CartItemEntity cartItemEntity) {
    cartItemsList.add(cartItemEntity);
  }

  removeItemFromCart(CartItemEntity cartItemEntity) {
    cartItemsList.remove(cartItemEntity);
  }

  bool isExist(ProductEntity productEntity) {
    for (var cartItem in cartItemsList) {
      if (cartItem.productEntity == productEntity) {
        return true;
      }
    }
    return false;
  }

  CartItemEntity getCartItem(ProductEntity productEntity) {
    for (var cartItem in cartItemsList) {
      if (cartItem.productEntity == productEntity) {
        return cartItem;
      }
    }
    return CartItemEntity(productEntity: productEntity, count: 1);
  }

  num calculateTotalPrice() {
    double totalPrice = 0;
    for (var cartItem in cartItemsList) {
      totalPrice += cartItem.calculateTotalPrice();
    }
    if (totalPrice % 1 == 0) {
      return totalPrice.toInt();
    } else {
      return totalPrice;
    }
  }
}
