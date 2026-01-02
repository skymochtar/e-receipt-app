import 'package:flutter/material.dart';

class BrandColors extends ThemeExtension<BrandColors> {
  final Color buttonBackground;
  final Color buttonText;

  final Color receiptBackground;
  final Color receiptIconButtonIcon;
  final Color receiptIconButtonBorder;
  final Color receiptCardBackground;

  final Color checkIcon;
  final Color checkBackground;

  final Color textPrimary;
  final Color textSecondary;

  final Color border1;
  final Color border2;

  BrandColors({
    required this.buttonBackground,
    required this.buttonText,
    required this.receiptBackground,
    required this.receiptIconButtonIcon,
    required this.receiptIconButtonBorder,
    required this.receiptCardBackground,
    required this.checkIcon,
    required this.checkBackground,
    required this.textPrimary,
    required this.textSecondary,
    required this.border1,
    required this.border2,
  });

  @override
  ThemeExtension<BrandColors> copyWith({
    Color? buttonBackground,
    Color? buttonText,
    Color? receiptBackground,
    Color? receiptIconButtonIcon,
    Color? receiptIconButtonBorder,
    Color? receiptCardBackground,
    Color? checkIcon,
    Color? checkBackground,
    Color? textPrimary,
    Color? textSecondary,
    Color? border1,
    Color? border2,
  }) {
    return BrandColors(
      buttonBackground: buttonBackground ?? this.buttonBackground,
      buttonText: buttonText ?? this.buttonText,
      receiptBackground: receiptBackground ?? this.receiptBackground,
      receiptIconButtonIcon:
          receiptIconButtonIcon ?? this.receiptIconButtonIcon,
      receiptIconButtonBorder:
          receiptIconButtonBorder ?? this.receiptIconButtonBorder,
      receiptCardBackground:
          receiptCardBackground ?? this.receiptCardBackground,
      checkIcon: checkIcon ?? this.checkIcon,
      checkBackground: checkBackground ?? this.checkBackground,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      border1: border1 ?? this.border1,
      border2: border2 ?? this.border2,
    );
  }

  @override
  ThemeExtension<BrandColors> lerp(
    covariant ThemeExtension<BrandColors>? other,
    double t,
  ) {
    if (other is! BrandColors) return this;

    return BrandColors(
      buttonBackground: Color.lerp(
        buttonBackground,
        other.buttonBackground,
        t,
      )!,
      buttonText: Color.lerp(buttonText, other.buttonText, t)!,
      receiptBackground: Color.lerp(
        receiptBackground,
        other.receiptBackground,
        t,
      )!,
      receiptIconButtonIcon: Color.lerp(
        receiptIconButtonIcon,
        other.receiptIconButtonIcon,
        t,
      )!,
      receiptIconButtonBorder: Color.lerp(
        receiptIconButtonBorder,
        other.receiptIconButtonBorder,
        t,
      )!,
      receiptCardBackground: Color.lerp(
        receiptCardBackground,
        other.receiptCardBackground,
        t,
      )!,
      checkIcon: Color.lerp(checkIcon, other.checkIcon, t)!,
      checkBackground: Color.lerp(checkBackground, other.checkBackground, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      border1: Color.lerp(border1, other.border1, t)!,
      border2: Color.lerp(border2, other.border2, t)!,
    );
  }

  static BrandColors form(BuildContext context) {
    return Theme.of(context).extension()!;
  }
}
