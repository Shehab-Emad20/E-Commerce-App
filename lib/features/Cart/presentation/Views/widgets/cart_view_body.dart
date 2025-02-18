import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/helper_function/build_appbar.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_button.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/cart_header.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/cart_item_list.dart';
import 'package:flutter_application_1/features/Cart/presentation/Views/widgets/custom_divider.dart';

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
          SliverToBoxAdapter(child: CustomDivider()),
          CartItemList(),
          SliverToBoxAdapter(child: CustomDivider()),
        ]),
        Positioned(
          left: 16,
          right: 16,
          bottom: MediaQuery.sizeOf(context).height * 0.07,
          child: CustomButton(
            onPressed: () {},
            text: '120 جنيه الدفع',
          ),
        )
      ],
    );
  }
}
