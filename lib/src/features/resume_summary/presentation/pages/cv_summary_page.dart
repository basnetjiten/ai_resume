import 'package:ai_resume/localization/arb/l10n.dart';
import 'package:ai_resume/src/core/di/injector.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_result_dto.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:ai_resume/src/features/resume_summary/presentation/blocs/resume_summary_cubit/resume_summary_cubit.dart';
import 'package:ai_resume/src/features/resume_summary/presentation/blocs/resume_summary_cubit/resume_summary_state.dart';
import 'package:ai_resume/src/features/resume_summary/presentation/pages/widgets/profile_header_widget.dart';
import 'package:ai_resume/src/features/resume_summary/presentation/pages/widgets/summary_card_widget.dart';
import 'package:ai_resume/src/theme/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class CVSummaryPage extends StatelessWidget {
  const CVSummaryPage({required this.fileName, super.key});

  final String fileName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ResumeSummaryCubit>(
      create: (_) => getIt<ResumeSummaryCubit>()..fetchResumeSummaryDetail(fileName: fileName),
      child: const _CVSummaryPageContent(),
    );
  }
}

class _CVSummaryPageContent extends StatefulWidget {
  const _CVSummaryPageContent({Key? key}) : super(key: key);

  @override
  _CVSummaryPageContentState createState() => _CVSummaryPageContentState();
}

class _CVSummaryPageContentState extends State<_CVSummaryPageContent> with TickerProviderStateMixin {
  late AnimationController _staggerController;

  @override
  void initState() {
    super.initState();
    _staggerController = AnimationController(duration: const Duration(milliseconds: 1200), vsync: this);
    _staggerController.forward();
  }

  @override
  void dispose() {
    _staggerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          localization.resumeSummary,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[AppColors.primary, AppColors.secondary],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[AppColors.primary, AppColors.secondary],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: BlocBuilder<ResumeSummaryCubit, ResumeSummaryState>(
          builder: (BuildContext context, ResumeSummaryState state) {
            return state.status.maybeWhen(
              initial: () => _buildLoading(),
              submitting: () => _buildLoading(),
              success: (String? data) {
                if (state.resumeSummaryData?.candidateName != null) {
                  return Column(
                    children: <Widget>[
                      Expanded(child: _buildContent(state.resumeSummaryData!)),
                      const SizedBox(height: 50),
                    ],
                  );
                }
                return _buildEmptyState();
              },
              error: (String? error) => Center(
                child: Text('Error: $error', style: const TextStyle(color: Colors.redAccent)),
              ),
              orElse: () => _buildLoading(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent(ResumeSummaryDataDto resumeSummaryData) {
    final List<ResumeResultDto> cvSummaries = context.read<ResumeSummaryCubit>().prepareAnalyzedSummaries(
      resumeSummaryData,
    );

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: cvSummaries.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return ProfileHeaderWidget(data: resumeSummaryData);
        }
        final int cvIndex = index - 1;
        return AnimatedBuilder(
          animation: _staggerController,
          builder: (BuildContext context, Widget? child) {
            final double animationValue = Interval(
              (index * 0.2).clamp(0.0, 1.0),
              ((index * 0.2) + 0.4).clamp(0.0, 1.0),
              curve: Curves.easeOutBack,
            ).transform(_staggerController.value);

            return Transform.translate(
              offset: Offset(0, 50 * (1 - animationValue)),
              child: Opacity(
                opacity: animationValue.clamp(0.0, 1.0),
                child: SummaryCardWidget(resumeResultDto: cvSummaries[cvIndex], index: cvIndex),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildLoading() {
    return  const Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white)));
  }

  Widget _buildEmptyState() {
    return const Center(
      child: Text('No data available', style: TextStyle(color: AppColors.textPrimary)),
    );
  }
}
