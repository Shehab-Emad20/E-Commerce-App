import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helper_function/build_appbar.dart';
import 'package:flutter_application_1/core/helper_function/get_user.dart';
import 'package:flutter_application_1/core/repos/orders_repo/orders_repo.dart';
import 'package:flutter_application_1/core/services/git_it_service.dart';
import 'package:flutter_application_1/features/Cart/domain/entites/cart_entity.dart';

import 'package:flutter_application_1/features/checkout/domain/entites/order_entity.dart';
import 'package:flutter_application_1/features/checkout/domain/entites/shipping_adress_entity.dart';
import 'package:flutter_application_1/features/checkout/presentation/manger/add_order_cubit/add_order_cubit.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/add_order_cubit_bloc_builder.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});

  static const routeName = 'checkout';
  final CartEntity cartEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddOrderCubit(
        getIt.get<OrdersRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: 'الشحن',
          shownotification: false,
        ),
        body: Provider.value(
          value: OrderEntity(
            uID: getUser().uId,
            cartEntity,
            shippingAdressEntity: ShippingAdressEntity(),
            place: 'checked out view',
          ),
          child: AddOrderCubitBlocBuilder(
            child: CheckoutViewBody(),
          ),
        ),
      ),
    );
  }
}
