import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/entity/add_product_entity.dart';
import 'package:flutter_application_1/core/repos/products_repo/products_repo.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepo) : super(ProductsInitial());

  final ProductsRepo productsRepo;
  int productsLengts = 0;
  Future<void> getProducts() async {
    emit(ProductsLoading());
    final result = await productsRepo.getProducts();
    result.fold(
      (failure) => emit(ProductsFailure(failure.message)),
      (products) => emit(ProductsSuccess(products)),
    );
  }

  Future<void> getBestSellingProducts() async {
    emit(ProductsLoading());
    final result = await productsRepo.getBestSellingProducts();
    result.fold(
      (failure) => emit(ProductsFailure(failure.message)),
      (products) {
        productsLengts = products.length;
        emit(ProductsSuccess(products));
      },
    );
  }
}
