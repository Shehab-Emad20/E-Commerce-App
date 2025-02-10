  import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_text_styles.dart';
import 'package:flutter_application_1/core/utils/widgets/notification_widget.dart';

AppBar buildAppBar() {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: NotificationWidget(),
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'الاكثر مبيعا',
        textAlign: TextAlign.center,
        style: TextStyles.bold16,
      ),
    );
  }

