import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/features/Cart/domain/entites/cart_entity.dart';
import 'package:flutter_application_1/features/Cart/domain/entites/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_cubit_state.dart';

class CartCubit extends Cubit<Carttate> {
  CartCubit() : super(CartCubitInitial());

  CartEntity cartEntity = CartEntity([]);
  void addCartItem(CartItemEntity cartItemEntity) {
    cartEntity.addCartItem(cartItemEntity);
    emit(CartItemtAdded());
  }
}
