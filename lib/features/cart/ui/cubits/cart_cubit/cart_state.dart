part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

final class CartItemAdded extends CartState {
  final CartEntity cartEntity;
  CartItemAdded({required this.cartEntity});
}

final class CartItemRemoved extends CartState {}
