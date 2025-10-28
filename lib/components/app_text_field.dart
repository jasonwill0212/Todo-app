import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text_style.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool isPassword;
  final EdgeInsetsGeometry? padding;

  const AppTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.isPassword = false,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
      child: TextField(
        obscureText: obscureText || isPassword,
        // textAlign: TextAlign.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 255, 255, 255),
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          hintText: hintText,
          hintStyle: AppTextStyle.tsRegularBlack13,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
