import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/presentation/cubits/sign_up_cubit/signup_cubit.dart';
import 'package:flutter_application_1/features/auth/presentation/view/widgets/singup_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingupViewBlocConsumer extends StatelessWidget {
  const SingupViewBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
      
      },
      builder: (context, state) {
        return SingnupViewBody();
      },
    );
  }
}