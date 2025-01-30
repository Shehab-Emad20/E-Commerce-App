import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = 'onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:OnBoardingViewBody()
    );
  }
}
