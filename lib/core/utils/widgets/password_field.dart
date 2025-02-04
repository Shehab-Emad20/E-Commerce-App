import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/custom_text_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved,
  });
  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onSaved: (value) {},
      hintText: 'كلمة المرور',
      textInputType: TextInputType.visiblePassword,
      suffixIcon: GestureDetector(
          onTap: () {
            obscureText = !obscureText;
            setState(() {});
          },
          child: obscureText
              ? Icon(Icons.remove_red_eye, color: Color(0xffC9CECF))
              : Icon(Icons.visibility_off, color: Color(0xffC9CECF))),
    );
  }
}
