import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_image_network.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/cart_item_action_buttons.dart';
import 'package:flutter_svg/svg.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
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
                imageUrl:
                    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ),
          SizedBox(width: 17),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('بطيخ', style: TextStyles.bold13),
                    Spacer(),
                    GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(Assets.imagesTrash))
                  ],
                ),
                Text('3كم',
                    style: TextStyles.regular13
                        .copyWith(color: AppColors.secondaryColor)),
                Row(
                  children: [
                    CartItemActionButtons(),
                    Spacer(),
                    Text('20 جنية',
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
  }
}
