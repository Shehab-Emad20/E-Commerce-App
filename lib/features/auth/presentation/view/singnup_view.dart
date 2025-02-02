import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_abb_bar.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/singup_view_body.dart';

class SingnupView extends StatelessWidget {
  const SingnupView({super.key});

  static const routeName = 'singnup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'حساب جديد'),
      body: SingnupViewBody(),
    );
  }
}
