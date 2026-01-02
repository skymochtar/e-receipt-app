import 'package:dotted_line/dotted_line.dart';
import 'package:e_receipt/components/my_button.dart';
import 'package:e_receipt/components/receipt_success_icon.dart';
import 'package:e_receipt/theme/brand_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';

class ReceiptCard extends StatelessWidget {
  const ReceiptCard({super.key});

  @override
  Widget build(BuildContext context) {
    final brandColors = BrandColors.form(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 32),
      decoration: BoxDecoration(
        color: brandColors.receiptCardBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 32,
        children: [
          ReceiptHeader(brandColors: brandColors),
          ReceiptDetails(brandColors: brandColors),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Divider(color: brandColors.border2),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: MyButton(
              variant: ButtonVariant.outline,
              text: "Get PDF Receipt",
              icon: HeroIcons.arrowDownTray,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ReceiptHeader extends StatelessWidget {
  final BrandColors brandColors;

  const ReceiptHeader({super.key, required this.brandColors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
      child: Column(
        spacing: 16,
        children: [
          ReceiptSuccessIcon(),
          Text(
            "Payment Success!",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: brandColors.textPrimary,
              fontSize: 20,
              height: 28 / 20,
            ),
          ),
        ],
      ),
    );
  }
}

class ReceiptDetails extends StatelessWidget {
  final BrandColors brandColors;

  const ReceiptDetails({super.key, required this.brandColors});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Row(
          spacing: 14,
          children: [
            Container(
              width: 10,
              height: 20,
              decoration: BoxDecoration(
                color: brandColors.receiptBackground,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(10),
                ),
              ),
            ),

            Expanded(
              child: DottedLine(dashColor: brandColors.border1, dashLength: 6),
            ),

            Container(
              width: 10,
              height: 20,
              decoration: BoxDecoration(
                color: brandColors.receiptBackground,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10),
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            spacing: 14,
            children: [
              ReceiptRowDetail(
                brandColors: brandColors,
                title: "References Number",
                value: "000085752257",
              ),
              ReceiptRowDetail(
                brandColors: brandColors,
                title: "Date",
                value: "January 1, 2026",
              ),
              ReceiptRowDetail(
                brandColors: brandColors,
                title: "Time",
                value: "20:00 PM",
              ),
              ReceiptRowDetail(
                brandColors: brandColors,
                title: "Payment Method",
                value: "Credit Card",
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: DottedLine(dashLength: 4, dashColor: brandColors.border2),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ReceiptRowDetail(
            brandColors: brandColors,
            title: "Amount",
            value: "IDR 500.000",
            isAmount: true,
          ),
        ),
      ],
    );
  }
}

class ReceiptRowDetail extends StatelessWidget {
  final BrandColors brandColors;
  final String title;
  final String value;
  final bool isAmount;

  const ReceiptRowDetail({
    super.key,
    required this.brandColors,
    required this.title,
    required this.value,
    this.isAmount = false,
  });

  double get valueFontsize => isAmount ? 16 : 13;
  double get valueFontHeight => isAmount ? 24 : 18;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 13,
            height: 18 / 13,
            color: brandColors.textSecondary,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: valueFontsize,
            height: valueFontHeight / valueFontsize,
            fontWeight: FontWeight.w500,
            color: brandColors.textPrimary,
          ),
        ),
      ],
    );
  }
}
