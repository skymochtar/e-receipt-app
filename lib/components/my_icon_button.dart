import 'package:e_receipt/theme/brand_colors.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class MyIconButton extends StatelessWidget {
  final HeroIcons icon;
  final VoidCallback? onPressed;

  const MyIconButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final brandColors = BrandColors.form(context);
    return IconButton.outlined(
      icon: HeroIcon(icon),
      onPressed: onPressed,
      style: IconButton.styleFrom(fixedSize: Size.square(40),
      foregroundColor: brandColors.receiptIconButtonIcon,
      side: BorderSide(color: brandColors.receiptIconButtonBorder)),
    );
  }
}
