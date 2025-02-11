part of 'cart_item_update_cubit.dart';

sealed class CartItemUpdateState {
  const CartItemUpdateState();
}

final class CartItemUpdateInitial extends CartItemUpdateState {}

final class CartItemUpdated extends CartItemUpdateState {
  final CartItemEntity cartItemEntity;
  const CartItemUpdated({required this.cartItemEntity});
}
