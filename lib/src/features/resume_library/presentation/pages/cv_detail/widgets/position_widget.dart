import 'package:ai_resume/src/features/resume_library/domain/models/resume_summary_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PositionWidget extends StatelessWidget {

  const PositionWidget({required this.resumeSummaryData, super.key});
  
  final ResumeSummaryData resumeSummaryData;

  Color _getExperienceColor(String experience) {
    switch (experience) {
      case 'Senior':
        return const Color(0xFF4CAF50);
      case 'Mid-level':
        return const Color(0xFFFF9800);
      case 'Junior':
        return const Color(0xFF2196F3);
      default:
        return const Color(0xFF9C27B0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(Icons.person, color: Colors.white, size: 40),
          ),
          const SizedBox(height: 16),
          Text(
            resumeSummaryData.name,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            resumeSummaryData.position,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white.withValues(alpha: 0.8),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: _getExperienceColor(resumeSummaryData.experience),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '${resumeSummaryData.experience} Level',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
