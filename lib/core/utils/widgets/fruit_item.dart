import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: 214,
      decoration: BoxDecoration(
        color: Color(0xFFF3F5F7),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Positioned(
        top: 0,
        right: 0,
        child: Stack(
          children: [
            SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline),
            ),
            Positioned.fill(
              child: Column(
                children: [
                  Image.asset(Assets.imagesWatermelonTest),
                  SizedBox(height: 24),
                  ListTile(
                    title: Text(
                        textAlign: TextAlign.right,
                        'بطيخ',
                        style: TextStyles.semiBold16),
                    subtitle: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '30جنيه',
                            style: TextStyles.bold13.copyWith(
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          TextSpan(
                            text: '/',
                            style: TextStyles.bold13
                                .copyWith(color: AppColors.lightsecondaryColor),
                          ),
                          TextSpan(
                            text: 'كيلو',
                            style: TextStyles.semiBold13
                                .copyWith(color: AppColors.lightsecondaryColor),
                          ),
                        ],
                      ),
                    ),
                    trailing: CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
