import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  static const routeName = 'checkout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CheckoutViewBody());
  }
}
