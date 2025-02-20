import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/main_view_body_bloc_consumer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          onItemTapped: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: SafeArea(
          child: MainViewBodyBlocConsumer(currentIndex: _currentIndex),
        ),
      ),
    );
  }
}
