import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Divider(
          color: Color(0xFFDCDEDE),
        ),
      ),
      SizedBox(width: 18),
      Text('أو', textAlign: TextAlign.center, style: TextStyles.semiBold16),
      SizedBox(width: 18),
      Expanded(
        child: Divider(
          color: Color(0xFFDCDEDE),
        ),
      ),
    ]);
  }
}
