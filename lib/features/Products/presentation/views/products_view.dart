import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/cubits/products_cubits/products_cubits.dart';
import 'package:flutter_application_1/core/repos/products_repo/products_repo.dart';
import 'package:flutter_application_1/core/services/git_it_service.dart';
import 'package:flutter_application_1/features/Products/presentation/views/widgets/products_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProductsCubit(
              getIt.get<ProductsRepo>(),
            ),
        child: ProductsViewBody());
  }
}
