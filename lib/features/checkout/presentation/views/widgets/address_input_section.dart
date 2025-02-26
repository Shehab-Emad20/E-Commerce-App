import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_text_field.dart';
import 'package:flutter_application_1/features/checkout/domain/entites/order_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressInputsection extends StatelessWidget {
  const AddressInputsection(
      {super.key, required this.formKey, required this.valueListenable});

  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> valueListenable;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<AutovalidateMode>(
        valueListenable: valueListenable,
        builder: (context, value, child) => Form(
          key: formKey,
          autovalidateMode: value,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAdressEntity!.name =
                      value!;
                },
                hintText: 'الاسم الكامل',
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAdressEntity!.email =
                      value!;
                },
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAdressEntity!.address =
                      value!;
                },
                hintText: 'العنوان',
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAdressEntity!.city =
                      value!;
                },
                hintText: 'المدينه',
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAdressEntity!.floor =
                      value!;
                },
                hintText: 'رقم الطابق و الشقة',
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  context.read<OrderEntity>().shippingAdressEntity!.phone =
                      value!;
                },
                hintText: 'رقم الهاتف',
                textInputType: TextInputType.phone,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
