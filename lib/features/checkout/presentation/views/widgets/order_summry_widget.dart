import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/features/checkout/presentation/views/widgets/payment_item.dart';

class OrderSummryWidget extends StatelessWidget {
  const OrderSummryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'ملخص الطلب',
      child: Column(
        children: [
          Row(
            children: [
              Text(
                ':التوصيل',
                style: TextStyles.regular13.copyWith(
                  color: Color(0xFF4E5556),
                ),
              ),
              Spacer(),
              Text('150 جنيه ', style: TextStyles.semiBold16),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                'المجموع الفرعي',
                style: TextStyles.regular13.copyWith(
                  color: Color(0xFF4E5556),
                ),
              ),
              Spacer(),
              Text('60 جنيه ', style: TextStyles.semiBold16),
            ],
          ),
          SizedBox(
            height: 9,
          ),
          Divider(
            thickness: 0.5,
            color: Color(0xFFCACECE),
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            children: [
              Text('الكلي', style: TextStyles.bold16),
              Spacer(),
              Text('60 جنيه ', style: TextStyles.semiBold16),
            ],
          ),
        ],
      ),
    );
  }
}