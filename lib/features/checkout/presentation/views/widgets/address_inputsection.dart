import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_text_field.dart';

class AddressInputsection extends StatelessWidget {
  const AddressInputsection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomTextFormField(
            hintText: 'الاسم الكامل',
            textInputType: TextInputType.text,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'البريد الالكتروني',
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'العنوان',
            textInputType: TextInputType.phone,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'المدينه',
            textInputType: TextInputType.phone,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'رقم الطابق و الشقة',
            textInputType: TextInputType.phone,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'رقم الهاتف',
            textInputType: TextInputType.phone,
          ),
        ],
      ),
    );
  }
}
