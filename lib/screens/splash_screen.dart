import 'package:flutter/material.dart';
import 'package:todo_app/components/app_assets_path.dart';
import 'package:todo_app/components/app_button.dart';
import 'package:todo_app/components/app_color.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/screens/registration_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white100,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(AppAssetsPath.imgCircle),
          ),
          const SizedBox(height: 59),
          Image.asset(
            AppAssetsPath.imgPersonWithPhone,
            width: 172.56,
            height: 170,
          ),
          const SizedBox(height: 45),
          AppText(
            text: 'Gets things done with TODO',
            style: AppTextStyle.tsSemiBoldBlack18,
          ),
          const SizedBox(height: 36),
          AppText(
            text:
                "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Interdum\n dictum tempus, interdum at dignissim \n metus. Ultricies sed nunc.",
            style: AppTextStyle.tsRegularBlack13,
          ),
          const Spacer(),
          AppButton(
            buttonText: "Get Started",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistrationScreen()),
              );
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
