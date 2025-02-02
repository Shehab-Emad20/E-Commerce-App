import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/features/auth/presentation/view/singnup_view.dart';

class DontHaveAccountWidegt extends StatelessWidget {
  const DontHaveAccountWidegt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
            text: 'ليس لديك حساب ؟',
            style: TextStyles.semiBold16.copyWith(color: Color(0xFF949D9E))),
        TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, SingnupView.routeName);
              },
            text: ' إنشاء حساب',
            style:
                TextStyles.semiBold16.copyWith(color: AppColors.primaryColor)),
      ]),
    );
  }
}
