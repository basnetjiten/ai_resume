import 'package:ai_resume/src/features/resume_library/domain/models/resume_summary_data.dart';
import 'package:ai_resume/src/features/resume_library/presentation/pages/analyzed_resumes/widgets/skills_section_widget.dart';
import 'package:ai_resume/src/features/resume_library/presentation/pages/cv_detail/widgets/detail_section_widget.dart';
import 'package:ai_resume/src/features/resume_library/presentation/pages/cv_detail/widgets/position_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumeDetailPage extends StatefulWidget {
  const ResumeDetailPage({required this.resumeSummaryData, super.key});

  final ResumeSummaryData resumeSummaryData;

  @override
  State<ResumeDetailPage> createState() => _ResumeDetailPageState();
}

class _ResumeDetailPageState extends State<ResumeDetailPage> with SingleTickerProviderStateMixin {
  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _slideController = AnimationController(duration: const Duration(milliseconds: 600), vsync: this);
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _slideController, curve: Curves.easeOutCubic));
    _slideController.forward();
  }

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resume Details',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Color(0xFF6A11CB), Color(0xFF2575FC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SlideTransition(
          position: _slideAnimation,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                PositionWidget(resumeSummaryData: widget.resumeSummaryData),
                const SizedBox(height: 24),
                _buildSummarySection(),
                const SizedBox(height: 20),
                SkillsSectionWidget(resumeSummaryData: widget.resumeSummaryData),
                const SizedBox(height: 20),
                _buildUploadInfoSection(),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSummarySection() {
    return DetailSectionWidget(
      title: 'Professional Summary',
      content: widget.resumeSummaryData.summary,
      icon: Icons.description,
    );
  }

  Widget _buildUploadInfoSection() {
    return DetailSectionWidget(
      title: 'Upload Information',
      content: 'Uploaded on ${widget.resumeSummaryData.uploadDate}',
      icon: Icons.calendar_today,
    );
  }
}
