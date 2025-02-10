import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/core/utils/widgets/notification_widget.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: NotificationWidget(),
      leading: Image.asset(Assets.imagesProfileImage),
      title: Text(
        'صباح الخير ...!',
        style: TextStyles.regular16.copyWith(
          color: Color(0xFF949D9E),
        ),
      ),
      subtitle: Text('محمد علي', style: TextStyles.bold16),
    );
  }
}
