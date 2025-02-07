import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/presentation/view/sign_in.dart';
import 'package:flutter_application_1/features/auth/presentation/view/singnup_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/home_view.dart';
import 'package:flutter_application_1/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter_application_1/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());

    case SingnupView.routeName:
      return MaterialPageRoute(builder: (context) => const SingnupView());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
