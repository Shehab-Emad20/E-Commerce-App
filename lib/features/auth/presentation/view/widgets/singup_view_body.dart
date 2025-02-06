import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/helper_function/build_error_bar.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_button.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_text_field.dart';
import 'package:flutter_application_1/core/utils/widgets/password_field.dart';
import 'package:flutter_application_1/features/auth/presentation/cubits/sign_up_cubit/signup_cubit.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/have_account_widegt.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/terms_and_conditions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingnupViewBody extends StatefulWidget {
  const SingnupViewBody({super.key});

  @override
  State<SingnupViewBody> createState() => _SingnupViewBodyState();
}

class _SingnupViewBodyState extends State<SingnupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String name, email, password;
  late bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: khorizinatalpadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(children: [
            SizedBox(height: 24),
            CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                hintText: 'الاسم الكامل',
                textInputType: TextInputType.name),
            SizedBox(height: 16),
            CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الالكتروني ',
                textInputType: TextInputType.emailAddress),
            SizedBox(height: 16),
            PasswordField(
              onSaved: (value) {
                password = value!;
              },
            ),
            SizedBox(height: 16),
            TermsAndConditions(
              onChanged: (value) {
                isTermsAccepted = value;
              },
            ),
            SizedBox(height: 30),
            CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (isTermsAccepted) {
                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                              email, name, password);
                    } else {
                      buiddErrorBar(
                          context, 'يجب الموافقة على الشروط والاحكام');
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'انشاء حساب'),
            SizedBox(height: 26),
            HaveAccountWidegt()
          ]),
        ),
      ),
    );
  }
}
