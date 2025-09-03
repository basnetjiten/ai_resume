import 'package:ai_resume/src/features/resume_library/domain/models/resume_summary_data.dart';
import 'package:ai_resume/src/features/resume_library/presentation/pages/analyzed_resumes/widgets/cv_card_widget.dart';
import 'package:ai_resume/src/features/resume_library/presentation/pages/cv_detail/resume_detail_page.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumeListWidget extends StatelessWidget {
  const ResumeListWidget({
    super.key,
    required this.animationController,
    required this.currentPageCVs,
  });

  final List<ResumeSummaryDataDto> currentPageCVs;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    if (currentPageCVs.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.folder_open, size: 64, color: Colors.grey[400]),
            const SizedBox(height: 16),
            Text(
              'No resumes found',
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return FadeTransition(
            opacity: animationController,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: currentPageCVs.length,
              itemBuilder: (context, index) {
                return TweenAnimationBuilder<double>(
                  duration: Duration(milliseconds: 600 + (index * 100)),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) {
                    final resume = currentPageCVs[index];
                    return Transform.translate(
                      offset: Offset(0, 30 * (1 - value)),
                      child: Opacity(
                        opacity: value.clamp(0.0, 1.0),
                        child: CVCardWidget(
                          cv: resume,
                          onTap: () {
                            _viewCVDetails(context, resume);
                          },
                          index: index,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }

  void _viewCVDetails(BuildContext context, ResumeSummaryDataDto cv) {
    final ResumeSummaryData resumeData = ResumeSummaryData(
      name: cv.candidateName,
      position: cv.role,
      experience: cv.seniority,
      summary: cv.summary,
      skills: cv.skills,
      uploadDate: cv.uploadedDate ?? 'NA',
    );
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ResumeDetailPage(resumeSummaryData: resumeData),
      ),
    );
  }
}
