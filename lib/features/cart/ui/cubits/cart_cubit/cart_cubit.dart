import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  CartEntity cartEntity = CartEntity(cartItemsList: []);

  void addItemToCart(ProductEntity productEntity) {
    var cartitem = cartEntity.getCartItem(productEntity);
    bool isProductExist = cartEntity.isExist(productEntity);
    if (isProductExist) {
      cartitem.increaseCount();
    } else {
      cartEntity.addItemToCart(cartitem);
    }
    emit(CartItemAdded(cartEntity: cartEntity));
  }

  void removeItemFromCart(CartItemEntity cartItemEntity) {
    cartEntity.removeItemFromCart(cartItemEntity);
    emit(CartItemRemoved());
  }
}
