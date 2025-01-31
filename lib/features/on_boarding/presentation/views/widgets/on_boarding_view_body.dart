import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_button.dart';
import 'package:flutter_application_1/features/on_boarding/presentation/views/widgets/on_boarding_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(activeColor: AppColors.primaryColor),
        ),
        SizedBox(height: 29),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: khorizinatalpadding),
          child: CustomButton(onPressed: () {}, text: 'أبدأ الان'),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
