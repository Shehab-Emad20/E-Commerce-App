import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/address_input_section.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/payment_section.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/shipping_section.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({
    super.key,
    required this.pageController,
    required this.formKey,
    required this.valueListenable,
  });
  final GlobalKey<FormState> formKey;
  final PageController pageController;

  final ValueListenable<AutovalidateMode> valueListenable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: PageView.builder(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        itemCount: getPages().length,
        itemBuilder: (context, index) {
          return getPages()[index];
        },
      ),
    );
  }

  List<Widget> getPages() {
    return [
      ShippingSection(),
      AddressInputsection(
        formKey: formKey,
        valueListenable: valueListenable,
      ),
      PaymentSection(
        pageController: pageController,
      ),
    ];
  }
}
