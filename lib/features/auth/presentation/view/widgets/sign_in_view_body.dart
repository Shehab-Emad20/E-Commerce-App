import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_button.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_text_field.dart';
import 'package:flutter_application_1/core/utils/widgets/password_field.dart';
import 'package:flutter_application_1/features/auth/presentation/cubits/sign_in_cubit/signin_cubit.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/dont_have_account_widegt.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/or_divider.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/social_login_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: khorizinatalpadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
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
              CustomButton(
                text: 'تسجيل الدخول',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    context.read<SigninCubit>().signin(email, password);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              SizedBox(height: 33),
              DontHaveAccountWidegt(),
              SizedBox(height: 33),
              OrDivider(),
              SizedBox(height: 16),
              SocialLoginButton(
                onPressed: () {
                  context.read<SigninCubit>().signInWithGoogle();
                },
                image: Assets.imagesGoogleIcon,
                title: 'تسجيل الدخول باستخدام جوجل',
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                onPressed: () {
                  context.read<SigninCubit>().signInWithFacebook();
                },
                image: Assets.imagesFacebookIcon,
                title: 'تسجيل الدخول باستخدام فيس بوك',
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                onPressed: () {},
                image: Assets.imagesApplIcon,
                title: 'تسجيل الدخول باستخدام ابل',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
