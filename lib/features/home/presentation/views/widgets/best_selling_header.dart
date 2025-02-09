import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textAlign: TextAlign.right,
          'الاكثر مبيعا',
          style: TextStyles.bold16,
        ),
        Spacer(),
        Text(
          'المزيد',
          style: TextStyles.regular13.copyWith(color: Color(0xFF949D9E)),
        ),
      ],
    );
  }
}
