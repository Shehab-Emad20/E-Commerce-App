import 'package:flutter_application_1/core/helper_function/get_currency.dart';
import 'package:flutter_application_1/features/checkout/domain/entites/order_entity.dart';

import 'details.dart';

class Amount {
  String? total;
  String? currency;
  DetailsEntity? details;

  Amount({this.total, this.currency, this.details});

  factory Amount.fromEntity(OrderEntity entity) {
    return Amount(
      total: entity.calculateTotalPriceAfterDiscountAndShipping().toString(),
      currency: getCurrency(),
      details: DetailsEntity.fromEntity(entity),
    );
  }

  toJson() => {
        'total': total,
        'currency': currency,
        'details': details!.toJson(),
      };
}
