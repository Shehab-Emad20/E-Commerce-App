import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(FrutisHub());
}

class FrutisHub extends StatelessWidget {
  const FrutisHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
