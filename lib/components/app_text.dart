import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text_style.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  const AppText({super.key, required this.text, this.style, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? AppTextStyle.tsSemiBoldWhite18,
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}
