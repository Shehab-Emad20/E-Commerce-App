import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SplashViewBody()));
  }
}
