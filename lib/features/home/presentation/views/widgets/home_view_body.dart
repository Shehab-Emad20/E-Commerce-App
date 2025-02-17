import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/cubits/products_cubits/products_cubits.dart';
import 'package:flutter_application_1/core/utils/widgets/search_text_field.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/best_selling_grid_view_bloc_builder.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/featured_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_selling_header.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getBestSellingProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: kDefaultPadding),
              CustomHomeAppBar(),
              SizedBox(height: kDefaultPadding),
              SearchTextFiield(),
              SizedBox(height: 12),
              FeaturedList(),
              SizedBox(height: 12),
              BestSellingHeader(),
              SizedBox(height: 8),
            ],
          ),
        ),
        BestSellingGridViewBlocBuilder(),
      ]),
    );
  }
}
