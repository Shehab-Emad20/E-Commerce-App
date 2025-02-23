import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.price});

  final String title, subTitle, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 163,
        top: 28,
        bottom: 16,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0x33D9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: IntrinsicHeight(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: 18,
            height: 18,
            decoration: ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(
                  width: 1,
                  color: Color(0xFF949D9E),
                ),
              ),
            ),
          ),
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
    );
  }
}
