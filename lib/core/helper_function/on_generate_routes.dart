import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Cart/domain/entites/cart_entity.dart';
import 'package:flutter_application_1/features/auth/presentation/view/sign_in.dart';
import 'package:flutter_application_1/features/auth/presentation/view/singnup_view.dart';
import 'package:flutter_application_1/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/checkout_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/main_view.dart';
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

    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());

    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView());

    case CheckoutView.routeName:
      return MaterialPageRoute(
          builder: (context) => CheckoutView(
                cartEntity: settings.arguments as CartEntity,
              ));

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
