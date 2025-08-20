import 'dart:math' as math;

import 'package:ai_resume/src/core/di/injector.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../resume_summary/data/models/resume_summary_dto.dart';
import '../../../domain/models/cv_summary_data.dart';
import '../../blocs/resume_library_cubit.dart';
import '../../blocs/resume_library_state.dart';
import '../cv_detail/cv_detail_page.dart';
import 'widgets/stat_card_widget.dart';
import 'widgets/cv_card_widget.dart';
import 'widgets/pagination_widget.dart';

@RoutePage()
class CVListingPage extends StatefulWidget {
  const CVListingPage({super.key});

  @override
  State<CVListingPage> createState() => _CVListingPageState();
}

class _CVListingPageState extends State<CVListingPage>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  int currentPage = 0;
  final int itemsPerPage = 5;
  late int totalPages;
  late List<ResumeSummaryDto> allCVs = [];
  late List<ResumeSummaryDto> currentPageCVs = [];

  late ResumeLibraryCubit _resumeLibraryCubit;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    
    // Fetch data from API
    _resumeLibraryCubit= getIt<ResumeLibraryCubit>()..fetchResumeSummaries();
    _fadeController.forward();
  }

  void _updateCurrentPageData() {
    final startIndex = currentPage * itemsPerPage;
    final endIndex = math.min(startIndex + itemsPerPage, allCVs.length);
    setState(() {
      currentPageCVs = allCVs.sublist(
        startIndex,
        endIndex,
      );
    });
  }

  void _goToPage(int page) {
    if (page >= 0 && page < totalPages) {
      setState(() {
        currentPage = page;
        _updateCurrentPageData();
      });
      _fadeController.reset();
      _fadeController.forward();
    }
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResumeLibraryCubit, ResumeLibraryState>(
      bloc: _resumeLibraryCubit,
      listener: (context, state) {

        state.status.maybeWhen(
          orElse: () {},
          success: (data) {
            setState(() {
              allCVs = state.summaries;
              totalPages = (allCVs.length / itemsPerPage).ceil();
              _updateCurrentPageData();
            });
          },
        );

      },
      builder: (context, state) {
        return Scaffold(
          appBar: _buildAppBar(),
          body: _buildBody(state),
        );
      },
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        'CV Library',
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  Widget _buildBody(ResumeLibraryState state) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: state.status.maybeWhen(
          submitting: () => allCVs.isEmpty
              ? const Center(child: CircularProgressIndicator(color: Colors.white))
              : _buildContent(),
          error: (error) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Failed to load resumes: ${error ?? 'Unknown error'}',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => _resumeLibraryCubit.fetchResumeSummaries(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF6A11CB),
                  ),
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
          orElse: _buildContent,
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        _buildStatsHeader(),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: _buildCVList(),
          ),
        ),
        if (totalPages > 1) _buildPagination(),
      ],
    );
  }

  Widget _buildStatsHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StatCardWidget(
            title: 'Total CVs',
            value: '${allCVs.length}',
            icon: Icons.description,
          ),
          StatCardWidget(
            title: 'Pages',
            value: '$totalPages',
            icon: Icons.pages,
          ),
          StatCardWidget(
            title: 'Current',
            value: '${currentPage + 1}',
            icon: Icons.bookmark,
          ),
        ],
      ),
    );
  }

  Widget _buildCVList() {
    if (currentPageCVs.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.folder_open,
              size: 64,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              'No resumes found',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      );
    }

    return AnimatedBuilder(
      animation: _fadeController,
      builder: (context, child) {
        return FadeTransition(
          opacity: _fadeController,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            itemCount: currentPageCVs.length,
            itemBuilder: (context, index) {
              final cv = currentPageCVs[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CVCardWidget(
                  cv: cv,
                  onTap: () => _viewCVDetails(cv),
                  index: index,
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildPagination() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
      ),
      child: PaginationWidget(
        currentPage: currentPage,
        totalPages: totalPages,
        onPageChanged: _goToPage,
      ),
    );
  }

  void _viewCVDetails(ResumeSummaryDto cv) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CVDetailPage(
          cvData: CVSummaryData(
            name: cv.data.candidateName,
            position: cv.data.role,
            experience: cv.data.seniority,
            summary: cv.data.summary,
            skills: cv.data.skills,
            uploadDate: cv.data.uploadedDate,
          ),
        ),
      ),
    );
  }
}
