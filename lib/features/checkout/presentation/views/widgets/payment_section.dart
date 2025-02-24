import 'package:flutter/material.dart';

import 'package:flutter_application_1/features/checkout/presentation/views/widgets/order_summry_widget.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        OrderSummryWidget(),
      ],
    );
  }
}
