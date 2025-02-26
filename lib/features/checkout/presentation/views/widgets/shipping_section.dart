import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/checkout/domain/entites/order_entity.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/shipping_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var orderEntity = context.read<OrderEntity>();
    return Column(
      children: [
        SizedBox(
          height: 33,
        ),
        ShippingItem(
          onTap: () {
            selectedIndex = 0;
            setState(() {});
            orderEntity.payWithCash = true;
          },
          isSelected: selectedIndex == 0,
          title: 'الدفع عند الاستلام',
          subTitle: 'التسليم من المكان',
          price: (context.read<OrderEntity>().cartEntity.calculateTotalPrice() +
                  40)
              .toString(),
        ),
        SizedBox(
          height: 16,
        ),
        ShippingItem(
          onTap: () {
            selectedIndex = 1;
            setState(() {});
            orderEntity.payWithCash = false;
          },
          isSelected: selectedIndex == 1,
          title: 'دفع اونلاين',
          subTitle: 'يرجى تحديد طريقة الدفع',
          price: context
              .read<OrderEntity>()
              .cartEntity
              .calculateTotalPrice()
              .toString(),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
