import 'dart:io';
import 'package:ai_resume/localization/arb/l10n.dart';
import 'package:ai_resume/src/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowPickedFileWidget extends StatelessWidget {
  const ShowPickedFileWidget({required this.removeFile, super.key, this.pickedFile});

  final File? pickedFile;
  final VoidCallback removeFile;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: (pickedFile != null ? 1.0 : 0.0).clamp(0.0, 1.0),
      duration: const Duration(milliseconds: 300),
      child: Column(
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(16)),
            child: const Icon(Icons.picture_as_pdf, size: 30, color: Colors.white),
          ),
          const SizedBox(height: 16),
          Text(
            pickedFile?.path.split('/').last ?? '',
            style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: removeFile,
            child: Text(localization.remove, style: GoogleFonts.poppins(color: AppColors.textPrimary, fontSize: 12)),
          ),
        ],
      ),
    );
  }
}
