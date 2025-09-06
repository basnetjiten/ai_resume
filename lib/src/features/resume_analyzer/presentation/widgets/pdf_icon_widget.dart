import 'package:flutter/material.dart';
import 'package:ai_resume/src/theme/app_colors.dart';

class PdfIconWidget extends StatelessWidget {
  const PdfIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(color: AppColors.cardBackground, borderRadius: BorderRadius.circular(20)),
      child: const Icon(Icons.picture_as_pdf, size: 40, color: AppColors.iconPrimary),
    );
  }
}
