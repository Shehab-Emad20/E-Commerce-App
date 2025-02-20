import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_image_network.dart';
import 'package:flutter_application_1/features/Cart/domain/entites/cart_item_entity.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/cart_item_action_buttons.dart';
import 'package:flutter_application_1/features/Cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_application_1/features/Cart/presentation/cubit/cart_item_cubit/cart_item_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      buildWhen: (prev, current) {
        if (current is CartItemUpdated) {
          if (current.cartItemEntity == cartItemEntity) {
            return true;
          }
        }
        return false;
      },
      builder: (context, state) {
        return IntrinsicHeight(
          child: Row(
            children: [
              Container(
                width: 73,
                height: 92,
                decoration: BoxDecoration(
                  color: Color(0xFFEBF9F1),
                ),
                child: CustomImageNetwork(
                    imageUrl: cartItemEntity.productEntity.imageUrl!),
              ),
              SizedBox(width: 17),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(cartItemEntity.productEntity.name,
                            style: TextStyles.bold13),
                        Spacer(),
                        GestureDetector(
                            onTap: () {
                              context
                                  .read<CartCubit>()
                                  .deleteCartItem(cartItemEntity);
                            },
                            child: SvgPicture.asset(Assets.imagesTrash))
                      ],
                    ),
                    Text('${cartItemEntity.calculateTotalWeight()} كم',
                        style: TextStyles.regular13
                            .copyWith(color: AppColors.secondaryColor)),
                    Row(
                      children: [
                        CartItemActionButtons(
                          cartItemEntity: cartItemEntity,
                        ),
                        Spacer(),
                        Text('${cartItemEntity.calculateTotalPrice()} جنية',
                            style: TextStyles.bold16
                                .copyWith(color: AppColors.secondaryColor)),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
