import 'package:e_receipt/theme/app_color.dart';
import 'package:e_receipt/theme/brand_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData.light().copyWith(
    extensions: [
      BrandColors(
        buttonBackground: AppColor.white,
        buttonText: AppColor.royalBlue,
        receiptBackground: AppColor.royalBlue,
        receiptIconButtonIcon: AppColor.white,
        receiptIconButtonBorder: AppColor.white24,
        receiptCardBackground: AppColor.white,
        checkIcon: AppColor.shamrockGrenn,
        checkBackground: AppColor.shamrockGrenn12,
        textPrimary: AppColor.eerieBlack,
        textSecondary: AppColor.dimGray,
        border1: AppColor.gainsboro,
        border2: AppColor.platinum,
      ),
    ],
  );
  static ThemeData dark = ThemeData.dark().copyWith(
    extensions: [
      BrandColors(
        buttonBackground: AppColor.blueViolet,
        buttonText: AppColor.white,
        receiptBackground: AppColor.richBlack,
        receiptIconButtonIcon: AppColor.white,
        receiptIconButtonBorder: AppColor.white16,
        receiptCardBackground: AppColor.outerSpace,
        checkIcon: AppColor.mediumAquamarine,
        checkBackground: AppColor.mediumAquamarine12,
        textPrimary: AppColor.white,
        textSecondary: AppColor.white72,
        border1: AppColor.white16,
        border2: AppColor.white16,
      ),
    ],
  );
}
