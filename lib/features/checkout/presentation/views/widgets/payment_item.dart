import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_decorations.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.title, required this.child});

  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyles.bold13),
        SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          decoration: AppDecorations.greyBixDecoration,
          child: child,
        )
      ],
    );
  }
}
