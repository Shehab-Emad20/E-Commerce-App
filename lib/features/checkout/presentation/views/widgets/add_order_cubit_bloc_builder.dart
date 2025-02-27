import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helper_function/build_error_bar.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_progress_hud.dart';
import 'package:flutter_application_1/features/checkout/presentation/manger/add_order_cubit/add_order_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddOrderCubitBlocBuilder extends StatelessWidget {
  const AddOrderCubitBlocBuilder({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit, AddOrderState>(
      listener: (context, state) {
        if (state is AddOrderSuccess) {
          showBar(context, 'تم العملية بنجاح');
        }
        if (state is AddOrderFailure) {
          showBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomProgressHUD(
            isLoading: state is AddOrderLoading, child: child);
      },
    );
  }
}
