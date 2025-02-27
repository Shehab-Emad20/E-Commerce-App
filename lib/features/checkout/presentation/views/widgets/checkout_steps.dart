import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helper_function/build_error_bar.dart';
import 'package:flutter_application_1/features/checkout/domain/entites/order_entity.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/step_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps(
      {super.key,
      required this.currentPageIndex,
      required this.pageController});

  final int currentPageIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        getSteps().length,
        (index) => Expanded(
            child: GestureDetector(
          onTap: () {
            if ((context.read<OrderEntity>().payWithCash != null)) {
              pageController.animateToPage(index,
                  duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            } else {
              showBar(context, 'اختر طريقة الدفع');
            }
          },
          child: StepItem(
            isActive: index <= currentPageIndex,
            index: (index + 1).toString(),
            text: getSteps()[index],
          ),
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
  ];
}
