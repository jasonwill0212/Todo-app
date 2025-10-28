import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final double? width;

  const AppButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? (size.width - 50),
        height: 62,
        decoration: BoxDecoration(color: const Color(0xFF50C2C9)),
        alignment: Alignment.center,
        child: AppText(text: buttonText),
      ),
    );
  }
}
