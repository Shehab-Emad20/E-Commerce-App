import 'package:flutter_application_1/features/checkout/domain/entites/shipping_adress_entity.dart';

class ShippingAdressModel {
  String? name;
  String? phone;
  String? address;
  String? city;
  String? email;

  String? floor;
  ShippingAdressModel({
    this.name,
    this.phone,
    this.address,
    this.city,
    this.email,
    this.floor,
  });

  factory ShippingAdressModel.fromEntity(ShippingAdressEntity entity) {
    return ShippingAdressModel(
      name: entity.name,
      phone: entity.phone,
      address: entity.address,
      city: entity.city,
      email: entity.email,
      floor: entity.floor,
    );
  }
  @override
  String toString() {
    return '$address $floor $city';
  }

  toJson() {
    return {
      'name': name,
      'phone': phone,
      'address': address,
      'city': city,
      'email': email,
      'floor': floor,
    };
  }
}
