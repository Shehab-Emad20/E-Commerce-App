import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/entity/add_product_entity.dart';
import 'package:flutter_application_1/features/Cart/domain/entites/cart_entity.dart';
import 'package:flutter_application_1/features/Cart/domain/entites/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_cubit_state.dart';

class CartCubit extends Cubit<Carttate> {
  CartCubit() : super(CartCubitInitial());

  CartEntity cartEntity = CartEntity([]);
  void addProduct(ProductEntity productEntity) {
    bool isProductExist = cartEntity.isExis(productEntity);
    if (isProductExist) {
    } else {
      CartItemEntity cartItemEntity =
          CartItemEntity(productEntity: productEntity, count: 1);
      cartEntity.addCartItem(cartItemEntity);
    }

    emit(CartItemtAdded());
  }
}
