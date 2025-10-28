import 'package:flutter/material.dart';
import 'package:todo_app/components/app_assets_path.dart';
import 'package:todo_app/components/app_button.dart';
import 'package:todo_app/components/app_color.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_field.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(AppAssetsPath.imgCircle),
            ),
            SizedBox(height: 47),
            AppText(
              text: "Welcome Onboard!",
              style: AppTextStyle.tsSemiBoldBlack18,
            ),
            const SizedBox(height: 14),
            AppText(
              text: "Let’s help you meet up your tasks",
              style: AppTextStyle.tsRegularBlack13,
            ),
            const SizedBox(height: 49),
            AppTextField(hintText: "Enter your full name"),
            const SizedBox(height: 21),
            AppTextField(hintText: "Enter your email"),
            const SizedBox(height: 21),
            AppTextField(hintText: "Enter password", isPassword: true),
            const SizedBox(height: 21),
            AppTextField(hintText: "Confirm Password", isPassword: true),
            const SizedBox(height: 50),
            AppButton(
              buttonText: "Register",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
            const SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  text: "Already have an account ? ",
                  style: AppTextStyle.tsRegularBlack14,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: AppText(
                    text: "Sign In",
                    style: AppTextStyle.tsBoldLightBlue14,
                  ),
                ),
              ],
            ),

            /// Other methods
            // Text.rich(
            //   TextSpan(
            //     text: "By registering you agree to our ",
            //     style: AppTextStyle.tsRegularBlack13,
            //     children: [
            //       TextSpan(
            //         text: "Terms & Conditions",
            //         style: AppTextStyle.tsBoldLightBlue14,
            //         recognizer:
            //             TapGestureRecognizer()
            //               ..onTap = () {
            //                 Navigator.push(
            //                   context,
            //                   MaterialPageRoute(
            //                     builder: (context) => const LoginScreen(),
            //                   ),
            //                 );
            //               },
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
