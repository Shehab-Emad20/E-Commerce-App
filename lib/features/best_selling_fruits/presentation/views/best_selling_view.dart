import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/best_selling_fruits/presentation/views/widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const String routeName = "BestSellingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BestSellingViewBody(),
    );
  }
}
