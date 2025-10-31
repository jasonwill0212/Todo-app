import 'package:flutter/material.dart';
import 'package:todo_app/components/app_color.dart';

class AppTextStyle {
  /// 400 - Regular
  /// 500 - Medium
  /// 600 - Semi Bold
  /// 700 - Bold

  static const TextStyle tsRegularBlack13 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: AppColor.black,
  );

  static const TextStyle tsRegularBlack14 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColor.black,
  );

  static const TextStyle tsSemiBoldBlack18 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: AppColor.black,
  );

  static const TextStyle tsSemiBoldWhite18 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: AppColor.white,
  );

  static const TextStyle tsBoldLightBlue14 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: AppColor.lightBlue,
  );
  static const TextStyle tsRegularLightBlue14 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColor.lightBlue,
  );
  static const TextStyle tsSemiBoldBlack12 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: AppColor.black,
  );
  static const TextStyle tsSemiBoldTealBlue10 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 10,
    color: AppColor.tealBlue,
  );
}
