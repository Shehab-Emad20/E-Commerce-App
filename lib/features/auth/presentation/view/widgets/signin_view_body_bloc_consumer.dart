import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_progress_hUD.dart';
import 'package:flutter_application_1/features/auth/presentation/cubits/sign_in_cubit/signin_cubit.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/sign_in_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {},
      builder: (context, state) {
        return CustomProgressHUD(
            isLoading: state is SigninLoading ? true : false,
            child: SignInViewBody());
      },
    );
  }
}
