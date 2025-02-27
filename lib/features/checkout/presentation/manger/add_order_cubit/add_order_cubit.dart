import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/core/repos/orders_repo/orders_repo.dart';
import 'package:flutter_application_1/features/checkout/domain/entites/order_entity.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.ordersRepo) : super(AddOrderInitial());

  final OrdersRepo ordersRepo;

  void addOrder({required OrderEntity order}) async {
    emit(AddOrderLoading());
    final result = await ordersRepo.addOrder(order: order);
    result.fold((failure) => emit(AddOrderFailure(failure.message)),
        (success) => emit(AddOrderSuccess()));
  }
}
