import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class HaveAccountWidegt extends StatelessWidget {
  const HaveAccountWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
            text: 'تمتلك حساب بالفعل؟',
            style: TextStyles.semiBold16.copyWith(color: Color(0xFF949D9E))),
        TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              },
            text: ' تسجيل الدخول',
            style:
                TextStyles.semiBold16.copyWith(color: AppColors.primaryColor)),
      ]),
    );
  }
}
