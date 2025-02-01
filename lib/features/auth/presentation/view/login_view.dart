import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_abb_bar.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'تسجيل الدخول'),
      body: LoginViewBody(),
    );
  }
}
