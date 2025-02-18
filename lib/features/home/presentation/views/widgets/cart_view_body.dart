import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/helper_function/build_appbar.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: kDefaultPadding),
              buildAppBar(context,
                  title: 'سلة التسوق', shownotification: false),
              SizedBox(height: 12),
            ],
          ),
        ),
      ]),
    );
  }
}
