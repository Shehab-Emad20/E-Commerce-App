import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/helper_function/build_appbar.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_button.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/cart_header.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/cart_item_list.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/custom_divider.dart';
import 'package:flutter_application_1/features/Cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: kDefaultPadding),
                buildAppBar(context,
                    title: 'سلة التسوق', shownotification: false),
                SizedBox(height: 12),
                CartHeader(),
                SizedBox(height: 12),
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
                  ? SizedBox()
                  : CustomDivider()),
          CartItemList(
              cartItems: context.read<CartCubit>().cartEntity.cartItems),
          SliverToBoxAdapter(
              child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
                  ? SizedBox()
                  : CustomDivider()),
        ]),
        Positioned(
          left: 16,
          right: 16,
          bottom: MediaQuery.sizeOf(context).height * 0.07,
          child: CustomButton(
            onPressed: () {},
            text:
                'الدفع${context.watch<CartCubit>().cartEntity.calculateTotalPrice()} جنيه ',
          ),
        )
      ],
    );
  }
}
