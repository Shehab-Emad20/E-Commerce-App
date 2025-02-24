import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_button.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/check_out_steps_page_view.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/checkout_steps.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          CheckoutSteps(
              pageController: pageController,
              currentPageIndex: currentPageIndex),
          Expanded(
            child: CheckoutStepsPageView(pageController: pageController),
          ),
          CustomButton(
              onPressed: () {
                pageController.animateToPage(currentPageIndex + 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.bounceIn);
              },
              text: getNextButtonText(currentPageIndex)),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}

String getNextButtonText(int currentPageIndex) {
  switch (currentPageIndex) {
    case 0:
      return 'التالي';
    case 1:
      return 'التالي';
    case 2:
      return 'ادفع عبر paypal;';
    default:
      return 'التالي';
  }
}
