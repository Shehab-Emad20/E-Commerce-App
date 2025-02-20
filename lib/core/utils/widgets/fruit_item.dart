import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/entity/add_product_entity.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_image_network.dart';
import 'package:flutter_application_1/features/Cart/presentation/cubit/cart_ubit/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.productEntity});

  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: 214,
      decoration: BoxDecoration(
        color: Color(0xFFF3F5F7),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Positioned(
        top: 0,
        right: 0,
        child: Stack(
          children: [
            SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline),
            ),
            Positioned.fill(
              child: Column(
                children: [
                  productEntity.imageUrl != null
                      ? Flexible(
                          child: CustomImageNetwork(
                              imageUrl: productEntity.imageUrl!),
                        )
                      : SizedBox(
                          width: double.infinity,
                          height: 100,
                        ),
                  SizedBox(height: 24),
                  ListTile(
                    title: Text(
                        textAlign: TextAlign.right,
                        productEntity.name,
                        style: TextStyles.semiBold16),
                    subtitle: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: ' ${productEntity.price} جنيه',
                            style: TextStyles.bold13.copyWith(
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          TextSpan(
                            text: '/',
                            style: TextStyles.bold13
                                .copyWith(color: AppColors.lightsecondaryColor),
                          ),
                          TextSpan(
                            text: ' ${productEntity.unitAmount} كيلو',
                            style: TextStyles.semiBold13
                                .copyWith(color: AppColors.lightsecondaryColor),
                          ),
                        ],
                      ),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        context.read<CartCubit>().addProduct(productEntity);
                      },
                      child: CircleAvatar(
                        backgroundColor: AppColors.primaryColor,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
