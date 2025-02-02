import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_button.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_text_field.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/have_account_widegt.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/terms_and_conditions.dart';

class SingnupViewBody extends StatelessWidget {
  const SingnupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: khorizinatalpadding),
        child: Column(children: [
          SizedBox(height: 24),
          CustomTextFormField(
              hintText: 'الاسم الكامل', textInputType: TextInputType.name),
          SizedBox(height: 16),
          CustomTextFormField(
              hintText: 'البريد الالكتروني ',
              textInputType: TextInputType.emailAddress),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'كلمة المرور',
            textInputType: TextInputType.visiblePassword,
            suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
          ),
          SizedBox(height: 16),
          TermsAndConditions(),
          SizedBox(height: 30),
          CustomButton(onPressed: () {}, text: 'انشاء حساب'),
          SizedBox(height: 26),
          HaveAccountWidegt()
        ]),
      ),
    );
  }
}
