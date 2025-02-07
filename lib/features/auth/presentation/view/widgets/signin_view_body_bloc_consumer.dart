import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helper_function/build_error_bar.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_progress_hUD.dart';
import 'package:flutter_application_1/features/auth/presentation/cubits/sign_in_cubit/signin_cubit.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/sign_in_view_body.dart';
import 'package:flutter_application_1/features/home/presentation/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          Navigator.pushNamed(context, HomeView.routeName);
        }
        if (state is SigninFailure) {
          buiddErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHUD(
            isLoading: state is SigninLoading ? true : false,
            child: SignInViewBody());
      },
    );
  }
}
