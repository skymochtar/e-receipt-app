import 'package:e_receipt/theme/brand_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';

enum ButtonVariant { light, outline }

class MyButton extends StatelessWidget {
  final ButtonVariant variant;

  final String text;
  final HeroIcons? icon;
  final VoidCallback? onPressed;

  const MyButton({super.key,required this.text, this.icon, required this.onPressed, this.variant = ButtonVariant.light});

  @override
  Widget build(BuildContext context) {
    final brandColors = BrandColors.form(context);

    final backgroundColor = switch (variant) {
      ButtonVariant.light => brandColors.buttonBackground,
      ButtonVariant.outline => brandColors.receiptCardBackground,
    };

    final foregroundColor = switch (variant) {
      ButtonVariant.light => brandColors.buttonText,
      ButtonVariant.outline => brandColors.textPrimary,
    };

    final outlineColor = switch (variant) {
      ButtonVariant.light => Colors.transparent,
      ButtonVariant.outline => brandColors.border1,
    };

    final fontWeight = switch (variant) {
      ButtonVariant.light => FontWeight.w600,
      ButtonVariant.outline => FontWeight.w500,
    };

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: outlineColor),
        ),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        elevation: 0,
      ),
      onPressed: () {},
      child: Row(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon !=null) HeroIcon(icon!),
          
          Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: fontWeight,
              fontSize: 14,
              height: 24 / 14,
            ),
          ),
        ],
      ),
    );
  }
}
