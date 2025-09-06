import 'package:ai_resume/localization/arb/l10n.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_result_dto.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_resume/src/theme/app_colors.dart';

class SummaryCardWidget extends StatelessWidget {
  const SummaryCardWidget({required this.resumeResultDto, required this.index, super.key});

  final ResumeResultDto resumeResultDto;
  final int index;

  String _getLocalizedTitle(String title) {
    switch (title.toLowerCase()) {
      case 'professional summary':
        return localization.professionalSummary;
      case 'upload information':
        return localization.uploadInformation;
      case 'years of experience':
        return localization.yearsOfExperience;
      default:
        return title;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
        boxShadow: <BoxShadow>[BoxShadow(color: Colors.black.withValues(alpha: 0.1), blurRadius: 15, offset: const Offset(0, 5))],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              _getLocalizedTitle(resumeResultDto.title),
              style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
            ),
            const SizedBox(height: 16),
            ...resumeResultDto.items.asMap().entries.map<Widget>((MapEntry<int, String> entry) {
              return TweenAnimationBuilder<double>(
                duration: Duration(milliseconds: 800 + (entry.key * 100)),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (BuildContext context, double value, Widget? child) {
                  return Transform.translate(
                    offset: Offset(20 * (1 - value), 0),
                    child: Opacity(
                      opacity: value.clamp(0.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(top: 6, right: 12),
                              width: 6,
                              height: 6,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                entry.value,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: AppColors.textPrimary,
                                  height: 1.6,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
