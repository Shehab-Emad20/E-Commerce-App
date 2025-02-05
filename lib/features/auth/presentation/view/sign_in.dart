import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/services/git_it_service.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_abb_bar.dart';
import 'package:flutter_application_1/features/auth/domain/repos/auth_repo.dart';
import 'package:flutter_application_1/features/auth/presentation/cubits/sign_in_cubit/signin_cubit.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/signin_view_body_bloc_consumer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'تسجيل الدخول'),
        body: SigninViewBodyBlocConsumer(),
      ),
    );
  }
}
