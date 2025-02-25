import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helper_function/build_appbar.dart';
import 'package:flutter_application_1/core/helper_function/get_user.dart';
import 'package:flutter_application_1/features/Cart/domain/entites/cart_entity.dart';

import 'package:flutter_application_1/features/checkout/domain/entites/order_entity.dart';
import 'package:flutter_application_1/features/checkout/domain/entites/shipping_adress_entity.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});

  static const routeName = 'checkout';
  final CartEntity cartEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: CheckoutViewBody(),
      ),
    );
  }
}
