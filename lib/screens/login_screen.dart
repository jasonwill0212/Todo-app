import 'package:todo_app/components/app_assets_path.dart';
import 'package:todo_app/components/app_button.dart';
import 'package:todo_app/components/app_color.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_field.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:todo_app/screens/dashboard_screen.dart';
import 'package:todo_app/screens/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  const LoginScreen({super.key, this.padding});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  get padding => null;

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
            AppText(
              text: "Welcome Back!",
              style: AppTextStyle.tsSemiBoldBlack18,
            ),
            const SizedBox(height: 20),
            DottedBorder(
              options: RectDottedBorderOptions(
                dashPattern: [10, 5],
                strokeWidth: 1,
                padding: padding ?? const EdgeInsets.all(30),
              ),
              child: Image.asset(
                AppAssetsPath.imgPersonAndPhoneWithNotification,
              ),
            ),
            SizedBox(height: 50),
            AppTextField(hintText: "Enter your email"),
            SizedBox(height: 21),
            AppTextField(hintText: "Enter password", isPassword: true),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegistrationScreen(),
                  ),
                );
              },
              child: AppText(
                text: "Forgot Password",
                style: AppTextStyle.tsRegularLightBlue14,
              ),
            ),
            SizedBox(height: 24),
            AppButton(
              buttonText: "Sign In",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashboardScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 29),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  text: "Don’t have an account ? ",
                  style: AppTextStyle.tsRegularBlack14,
                ),
                InkWell(
                  child: AppText(
                    text: "Sign Up",
                    style: AppTextStyle.tsBoldLightBlue14,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegistrationScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
