import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/cart_view.dart';
import 'package:flutter_application_1/features/Products/presentation/views/products_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/home_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
    required int currentIndex,
  }) : _currentIndex = currentIndex;

  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: _currentIndex,
      children: [
        HomeView(),
        ProductsView(),
        CartView(),
      ],
    );
  }
}