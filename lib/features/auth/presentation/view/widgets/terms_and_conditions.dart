import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/custom_check_box.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
            onChecked: (value) {
              isTermsAccepted = value;
              setState(() {});
            },
            isChecked: isTermsAccepted),
        SizedBox(width: 16),
        Expanded(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: 'من خلال إنشاء حساب، فإنك توافق على',
              style: TextStyles.semiBold13.copyWith(color: Color(0xFF949D9E)),
            ),
            TextSpan(
              text: ' الشروط والاحكام',
              style: TextStyles.semiBold13
                  .copyWith(color: AppColors.lightprimaryColor),
            ),
            TextSpan(
                text: '  الخاصة',
                style: TextStyles.semiBold13.copyWith(
                  color: AppColors.lightprimaryColor,
                )),
            TextSpan(
              text: ' بنا ',
              style: TextStyles.semiBold13
                  .copyWith(color: AppColors.lightprimaryColor),
            ),
          ])),
        )
      ],
    );
  }
}
