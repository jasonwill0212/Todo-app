import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_style.dart';

class GreetingText extends StatelessWidget {
  const GreetingText({super.key});

  String getGreeting() {
    final now = DateTime.now();
    final hour = now.hour;

    if (hour < 12) {
      return 'Good morning';
    } else if (hour < 17) {
      return 'Good afternoon';
    } else if (hour < 20) {
      return 'Good evening';
    } else {
      return 'Good night';
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppText(
      text:
      getGreeting(),
      style: AppTextStyle.tsSemiBoldBlack12,
    );
  }
}


