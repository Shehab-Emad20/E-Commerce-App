import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(14, 0),
      child: Row(
        children: [
          Checkbox(
            value: true,
            onChanged: (value) {},
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width -
                (khorizinatalpadding * 2) -
                48,
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
      ),
    );
  }
}
