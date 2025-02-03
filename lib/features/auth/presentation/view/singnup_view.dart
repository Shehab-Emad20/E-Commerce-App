import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/services/git_it_service.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_abb_bar.dart';
import 'package:flutter_application_1/features/auth/domain/repos/auth_repo.dart';
import 'package:flutter_application_1/features/auth/presentation/cubits/sign_up_cubit/signup_cubit.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/singup_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingnupView extends StatelessWidget {
  const SingnupView({super.key});

  static const routeName = 'singnup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'حساب جديد'),
        body: SingnupViewBody(),
      ),
    );
  }
}
