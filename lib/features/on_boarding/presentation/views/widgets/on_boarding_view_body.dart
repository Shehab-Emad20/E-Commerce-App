import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/on_boarding/presentation/views/widgets/on_boarding_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Expanded(child: OnBoardingPageView())],
    );
  }
}
