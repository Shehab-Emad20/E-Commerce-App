import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/cubits/products_cubits/products_cubits.dart';
import 'package:flutter_application_1/core/helper_function/build_appbar.dart';
import 'package:flutter_application_1/core/utils/widgets/search_text_field.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/products_grid_view_bloc_builder.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/products_view_header.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit>().getProducts();
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
              buildAppBar(context, title: 'المنتجات', showBackButton: false),
              SearchTextFiield(),
              SizedBox(height: 12),
              ProductsViewHeader(
                  productsLengts: context.read<ProductsCubit>().productsLengts),
              SizedBox(height: 8),
            ],
          ),
        ),
        ProductsGridViewBlocBuilder(),
      ]),
    );
  }
}
