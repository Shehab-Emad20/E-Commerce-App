import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/checkout_steps.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [CheckoutSteps()],
      ),
    );
  }
}
