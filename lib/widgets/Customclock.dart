import 'package:flutter/material.dart';
import 'package:animated_analog_clock/animated_analog_clock.dart';

class FourNumberClock extends StatelessWidget {
  const FourNumberClock({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [

        AnimatedAnalogClock(
          size:170,
          location: 'Australia/Darwin',
          // Gradient Background if you want
          // backgroundGradient: RadialGradient(colors: []),
          // Set a network image as the background
          // backgroundImage: NetworkImage(
          // 'url',
          // ),
          // Alternatively, set an asset image as the background
          // backgroundImage: AssetImage(
          //   'path/to/your/asset/image.png',
          // ),
          clock: () => DateTime.now(),
          backgroundColor: Color(0xfff5efef),
          hourHandColor: Color(0xff2a696c),
          minuteHandColor: Color(0xff70a4a7),
          secondHandColor: Color(0xffc1c0c0),
          centerDotColor: Color(0xffeeeeee),
        ),
      ],
    );
  }
}
