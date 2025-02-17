import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/home_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  static const routeName = 'home_view';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(),
        body: HomeView(),
      ),
    );
  }
}
