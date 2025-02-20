import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/entity/add_product_entity.dart';
import 'package:flutter_application_1/features/Cart/domain/entites/cart_entity.dart';
import 'package:flutter_application_1/features/Cart/domain/entites/cart_item_entity.dart';

import 'package:meta/meta.dart';

part 'cart_cubit_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartCubitInitial());

  CartEntity cartEntity = CartEntity([]);
  void addProduct(ProductEntity productEntity) {
    bool isProductExist = cartEntity.isExis(productEntity);
    var carItem = cartEntity.getCartItem(productEntity);

    if (isProductExist) {
      carItem.increasCount();
    } else {
      cartEntity.addCartItem(carItem);
    }

    emit(CartItemAdded());
  }

  void deleteCartItem(CartItemEntity cartItemEntity) {
    cartEntity.removeCartItem(cartItemEntity);
    emit(CartItemRemoved());
  }
}
