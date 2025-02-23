import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/shipping_item.dart';

class ShippingSection extends StatelessWidget {
  const ShippingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 33,
        ),
        ShippingItem(
          isSelected: true,
          title: 'الدفع عند الاستلام',
          subTitle: 'التسليم من المكان',
          price: '40',
        ),
        SizedBox(
          height: 16,
        ),
        ShippingItem(
          isSelected: false,
          title: 'دفع اونلاين',
          subTitle: 'يرجى تحديد طريقة الدفع',
          price: '40',
        ),
      ],
    );
  }
}
