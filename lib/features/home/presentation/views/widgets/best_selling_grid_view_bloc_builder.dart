import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/cubits/products_cubits/products_cubits.dart';
import 'package:flutter_application_1/core/helper_function/get_dummy_product.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_error.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/best_selling_grid_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return BestSellingGridView(
            products: state.products,
          );
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(child: CustomError(text: state.errMessage));
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: BestSellingGridView(
              products: getDummyProducts(),
            ),
          );
        }
      },
    );
  }
}
