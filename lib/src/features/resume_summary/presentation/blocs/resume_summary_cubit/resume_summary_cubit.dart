import 'package:ai_resume/src/features/resume_summary/data/models/resume_result_dto.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:ai_resume/src/features/resume_summary/domain/repositories/resume_summary_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_form_field/base_bloc.dart';
import 'package:simple_form_field/form/form_status.dart';
import 'resume_summary_state.dart';

@injectable
class ResumeSummaryCubit extends BaseBloc<void, ResumeSummaryState> {
  final ResumeSummaryRepository _repository;

  ResumeSummaryCubit(this._repository) : super(const ResumeSummaryState());

  Future<void> fetchResumeSummaries() async {
    emit(state.copyWith(status: FormStatus.submitting()));

    await handleAPICall(
      call: _repository.getResumeSummaries(),
      onSuccess: (summaries) => state.copyWith(
        status: FormStatus.success(),
        summaries: summaries,
      ),
      onFailure: (error) => state.copyWith(
        status: FormStatus.error(error: error.toString()),
      ),
    );
  }

  Future<void> fetchResumeSummaryDetail({required String fileName}) async {
    await handleAPICall(
      call: _repository.getResumeSummary(fileName),
      onSuccess: (summary) => state.copyWith(
          status: const FormStatus.success(), resumeSummaryData: summary.data),
      onFailure: (error) => state.copyWith(
        status: FormStatus.error(error: error.toString()),
      ),
    );
  }

  List<ResumeResultDto> prepareAnalyzedSummaries(
      ResumeSummaryDataDto analyzedData) {
    final List<ResumeResultDto> summaries = [
      ResumeResultDto(
        title: 'Professional Summary',
        items: [
          analyzedData.summary,
        ],
      ),
      ResumeResultDto(
        title: 'Technical Skills',
        items: analyzedData.skills.sublist(0, 5),
      ),
      ResumeResultDto(
        title: 'Strengths',
        items: analyzedData.analysis.candidateStrengths,
      ),
      ResumeResultDto(
        title: 'Weaknesses',
        items: analyzedData.analysis.candidateWeaknesses,
      ),
      ResumeResultDto(title: 'Justification', items: [
        analyzedData.analysis.justification,
      ]),
    ];
    return summaries;
  }
}
