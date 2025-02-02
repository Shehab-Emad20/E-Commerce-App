import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_button.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_text_field.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/dont_have_account_widegt.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/or_divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: khorizinatalpadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور ؟',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.lightprimaryColor),
                ),
              ],
            ),
            SizedBox(height: 33),
            CustomButton(text: 'تسجيل الدخول', onPressed: () {}),
            SizedBox(height: 33),
            DontHaveAccountWidegt(),
            SizedBox(height: 33),
            OrDivider(),
          ],
        ),
      ),
    );
  }
}
