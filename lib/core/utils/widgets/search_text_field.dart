import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextFiield extends StatelessWidget {
  const SearchTextFiield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            spreadRadius: 2,
            blurRadius: 9,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: SizedBox(
              width: 20,
              child: Center(child: SvgPicture.asset(Assets.imagesSearchIcon))),
          suffixIcon: SizedBox(
              width: 20,
              child: Center(child: SvgPicture.asset(Assets.imagesFilter))),
          hintStyle: TextStyles.regular13.copyWith(
            color: const Color(0xFF949D9E),
          ),
          hintText: 'ابحث عن المنتجات',
          filled: true,
          fillColor: Colors.white,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(width: 1, color: Colors.white),
    );
  }
}
