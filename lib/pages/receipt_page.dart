import 'package:e_receipt/components/my_button.dart';
import 'package:e_receipt/components/my_icon_button.dart';
import 'package:e_receipt/components/receipt_card.dart';
import 'package:e_receipt/theme/brand_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heroicons/heroicons.dart';

class ReceiptPage extends StatelessWidget {
  const ReceiptPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    final brandColors = BrandColors.form(context);

    return Scaffold(
      backgroundColor: brandColors.receiptBackground,
      appBar: AppBar(
        backgroundColor: brandColors.receiptBackground,
        titleSpacing: 24,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyIconButton(icon: HeroIcons.xMark, onPressed: () {}),
            MyIconButton(icon: HeroIcons.arrowDownTray, onPressed: () {}),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: ReceiptCard(),
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 24),
      child: MyButton(text: 'Back To Home', onPressed: () {
        
      },),)),
    );
  }
}
