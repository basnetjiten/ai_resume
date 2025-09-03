import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadFileButtonWidget extends StatelessWidget {
  const UploadFileButtonWidget({super.key, required this.onFilePick});

  final void Function() onFilePick;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: ElevatedButton(
        onPressed: onFilePick,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF6A11CB),
          elevation: 8,
          shadowColor: Colors.black.withOpacity(0.3),
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.upload_file),
            SizedBox(width: 8),
            Text(
              'Select File',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
