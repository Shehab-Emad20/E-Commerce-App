import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helper_function/build_error_bar.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_button.dart';
import 'package:flutter_application_1/features/checkout/domain/entites/order_entity.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/check_out_steps_page_view.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/checkout_steps.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;
  ValueNotifier<AutovalidateMode> valueNotifier =
      ValueNotifier(AutovalidateMode.disabled);
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
    valueNotifier.dispose();
    super.dispose();
  }

  int currentPageIndex = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
            child: CheckoutStepsPageView(
              valueListenable: valueNotifier,
              pageController: pageController,
              formKey: _formKey,
            ),
          ),
          CustomButton(
            onPressed: () {
              if (currentPageIndex == 0) {
                _handelShippingSectionVallidation(context);
              } else if (currentPageIndex == 1) {
                _handelAddressVallidation();
              }
            },
            text: getNextButtonText(currentPageIndex),
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }

  void _handelShippingSectionVallidation(BuildContext context) {
    if (context.read<OrderEntity>().payWithCash != null) {
      pageController.animateToPage(currentPageIndex + 1,
          duration: const Duration(milliseconds: 300), curve: Curves.bounceIn);
    } else {
      showErrorBar(context, 'اختر طريقة الدفع');
    }
  }

  void _handelAddressVallidation() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      pageController.animateToPage(currentPageIndex + 1,
          duration: const Duration(milliseconds: 300), curve: Curves.bounceIn);
    } else {
      valueNotifier.value = AutovalidateMode.always;
    }
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
