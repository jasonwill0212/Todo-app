import 'package:animated_analog_clock/animated_analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/components/app_color.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_style.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 6,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: AnimatedAnalogClock(
            size: 120,
            clock: () => DateTime.now(),
            backgroundColor: AppColor.SoftPinkishWhite,
            hourHandColor: AppColor.TealBlue,
            minuteHandColor: AppColor.lightteal,
            secondHandColor: AppColor.lightgray,
            hourDashColor: AppColor.SoftPinkishWhite,
            minuteDashColor: AppColor.SoftPinkishWhite,
          ),
        ),

        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: AppColor.NeutralGray,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 5,
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),

        Positioned(
          top: 10,
          child: AppText(text: "12", style: AppTextStyle.tsSemiBoldTealBlue10),
        ),
        Positioned(
          bottom: 10,
          child: AppText(text: "6", style: AppTextStyle.tsSemiBoldTealBlue10),
        ),
        Positioned(
          right: 10,
          child: AppText(text: "3", style: AppTextStyle.tsSemiBoldTealBlue10),
        ),
        Positioned(
          left: 10,
          child: AppText(text: "9", style: AppTextStyle.tsSemiBoldTealBlue10),
        ),
      ],
    );
  }
}
