import 'package:e_receipt/theme/brand_colors.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class ReceiptSuccessIcon extends StatelessWidget {
  const ReceiptSuccessIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final brandColors = BrandColors.form(context);
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: brandColors.checkBackground,
        borderRadius: BorderRadius.circular(56),
      ),
      child: HeroIcon(
        HeroIcons.checkCircle,
        style: HeroIconStyle.solid,
        color: brandColors.checkIcon,
      ),
    );
  }
}
