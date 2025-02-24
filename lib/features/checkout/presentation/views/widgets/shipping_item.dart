import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/active_shipping_item_dot.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/in_active_shipping_item_dot.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.price,
      required this.isSelected,
      required this.onTap});

  final String title, subTitle, price;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.only(
          top: 16,
          left: 13,
          right: 28,
          bottom: 16,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0x33D9D9D9),
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color:
                    isSelected ? AppColors.primaryColor : Colors.transparent),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: IntrinsicHeight(
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            isSelected ? ActiveShippingItemDot() : InActiveShippingItemDot(),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyles.semiBold13),
                SizedBox(
                  height: 6,
                ),
                Text(
                  textAlign: TextAlign.right,
                  subTitle,
                  style: TextStyles.regular13.copyWith(
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
            Spacer(),
            Center(
              child: Text(
                '$price جنيه',
                style: TextStyles.bold13
                    .copyWith(color: AppColors.lightprimaryColor),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
