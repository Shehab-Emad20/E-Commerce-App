import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/checkout_steps.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      itemCount: getSteps().length,
      itemBuilder: (context, index) {
        return SizedBox();
      },
    );
  }
}
