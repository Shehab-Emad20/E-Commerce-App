import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/cart_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/home_view.dart';
import 'package:flutter_application_1/features/Products/presentation/views/products_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const routeName = 'home_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onItemTapped: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: [
            HomeView(),
            ProductsView(),
            CartView(),
          ],
        ),
      ),
    );
  }
}

