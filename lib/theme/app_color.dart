import 'package:flutter/material.dart';

class AppColor {
  static Color white = const Color(0xFFFFFFFF);
  static Color white16 = white.withAlpha((255 * .16).toInt());
  static Color white24 = white.withAlpha((255 * .24).toInt());
  static Color white72 = white.withAlpha((255 * .72).toInt());

  static Color royalBlue = const Color(0xFF1646A7);
  static Color blueViolet = const Color(0xFF5530BE);

  static Color outerSpace = const Color((0xFF25282E));
  static Color eerieBlack = const Color((0xFF121212));
  static Color dimGray = const Color((0xFF707070));
  static Color gainsboro = const Color((0xFFDCDEE0));
  static Color platinum = const Color((0xFFE8EAED));
  static Color richBlack = const Color((0xFF161719));

  static Color shamrockGrenn = const Color((0XFF23A26D));
  static Color shamrockGrenn12 = shamrockGrenn.withAlpha((255 * .12).toInt());
  static Color mediumAquamarine = const Color((0xFF41D195));
  static Color mediumAquamarine12 = mediumAquamarine.withAlpha(
    (255 * .12).toInt(),
  );
}
