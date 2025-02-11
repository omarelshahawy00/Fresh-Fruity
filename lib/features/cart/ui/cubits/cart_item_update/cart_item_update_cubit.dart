import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:equatable/equatable.dart';

part 'cart_item_update_state.dart';

class CartItemUpdateCubit extends Cubit<CartItemUpdateState> {
  CartItemUpdateCubit() : super(CartItemUpdateInitial());

  void update(CartItemEntity cartItemEntity) =>
      emit(CartItemUpdated(cartItemEntity: cartItemEntity));
}
