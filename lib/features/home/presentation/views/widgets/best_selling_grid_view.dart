import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/entity/add_product_entity.dart';
import 'package:flutter_application_1/core/utils/widgets/fruit_item.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key, required this.products});

  final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => FruitItem(
        productEntity: products[index],
      ),
    );
  }
}
