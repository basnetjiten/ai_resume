import 'dart:math' as math;
import 'package:ai_resume/src/core/di/injector.dart';
import 'package:ai_resume/src/features/resume_library/presentation/pages/analyzed_resumes/widgets/resume_list_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/stat_card_widget.dart';
import 'widgets/pagination_widget.dart';
import '../../../../resume_summary/data/models/resume_summary_dto.dart';
import '../../blocs/resume_library_cubit.dart';
import '../../blocs/resume_library_state.dart';

@RoutePage()
class AnalyzedResumesPage extends StatefulWidget {
  const AnalyzedResumesPage({super.key});

  @override
  State<AnalyzedResumesPage> createState() => _AnalyzedResumesPageState();
}

class _AnalyzedResumesPageState extends State<AnalyzedResumesPage> with TickerProviderStateMixin {
  late AnimationController _fadeController;
  int currentPage = 0;
  final int itemsPerPage = 5;
  late int totalPages;
  late List<ResumeSummaryDataDto> allCVs = [];
  late List<ResumeSummaryDataDto> currentPageCVs = [];

  late ResumeLibraryCubit _resumeLibraryCubit;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(duration: const Duration(milliseconds: 800), vsync: this);

    // Fetch data from API
    _resumeLibraryCubit = getIt<ResumeLibraryCubit>()..fetchResumeSummaries();
    _fadeController.forward();
  }

  void _updateCurrentPageData() {
    final int startIndex = currentPage * itemsPerPage;
    final int endIndex = math.min(startIndex + itemsPerPage, allCVs.length);
    setState(() {
      currentPageCVs = allCVs.sublist(startIndex, endIndex);
    });
  }

  void _goToPage(int page) {
    if (page >= 0 && page < totalPages) {
      setState(() {
        currentPage = page;
        _updateCurrentPageData();
      });
      _fadeController
        ..reset()
        ..forward();
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
      listener: (BuildContext context, ResumeLibraryState state) {
        state.status.maybeWhen(
          orElse: () {},
          success: (String? data) {
            setState(() {
              allCVs = state.summaries;
              totalPages = (allCVs.length / itemsPerPage).ceil();
              _updateCurrentPageData();
            });
          },
        );
      },
      builder: (BuildContext context, ResumeLibraryState state) {
        return Scaffold(appBar: _buildAppBar(), body: _buildBody(state));
      },
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        'Resume Library',
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
    );
  }

  Widget _buildBody(ResumeLibraryState state) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[Color(0xFF6A11CB), Color(0xFF2575FC)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: state.status.maybeWhen(
        submitting: () =>
            allCVs.isEmpty ? const Center(child: CircularProgressIndicator(color: Colors.white)) : _buildContent(),
        error: (String? error) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Failed to load resumes',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => _resumeLibraryCubit.fetchResumeSummaries(),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: const Color(0xFF6A11CB)),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
        orElse: _buildContent,
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        _buildStatsHeader(),
        Expanded(
          child: ResumeListWidget(animationController: _fadeController, currentPageCVs: currentPageCVs),
        ),
        if (totalPages > 1) _buildPagination(),
        const SizedBox(height: 50),
      ],
    );
  }

  Widget _buildStatsHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white.withValues(alpha: (0.3))),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            StatCardWidget(
              title: 'Total Resumes',
              value: '${allCVs.length}',
              icon: Icons.description,
              color: Colors.white,
            ),
            StatCardWidget(title: 'Pages', value: '$totalPages', icon: Icons.pages, color: Colors.white),
            StatCardWidget(title: 'Current', value: '${currentPage + 1}', icon: Icons.bookmark, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _buildPagination() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(24))),
      child: PaginationWidget(currentPage: currentPage, totalPages: totalPages, onPageChanged: _goToPage),
    );
  }
}
