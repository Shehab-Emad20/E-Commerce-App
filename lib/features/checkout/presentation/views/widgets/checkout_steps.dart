import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        getSteps().length,
        (index) => Expanded(
            child: StepItem(
          isActive: false,
          index: index.toString(),
          text: getSteps()[index],
        )),
      ),
    );
  }
}

List<String> getSteps() {
  return [
    'الشحن',
    'العنوان',
    'الدفع',
    'المراجعه',
  ];
}
