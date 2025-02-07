import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: CustomHomeAppBar(),
      ),
    ]);
  }
}
