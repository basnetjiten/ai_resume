import 'package:ai_resume/src/features/resume_summary/data/models/resume_result_dto.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:ai_resume/src/features/resume_summary/domain/repositories/resume_summary_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_form_field/base_bloc.dart';
import 'package:simple_form_field/form/form_status.dart';
import 'resume_summary_state.dart';

@injectable
class ResumeSummaryCubit extends BaseBloc<void, ResumeSummaryState> {
  ResumeSummaryCubit(this._repository) : super(const ResumeSummaryState());
  final ResumeSummaryRepository _repository;

  Future<void> fetchResumeSummaries() async {
    emit(state.copyWith(status: const FormStatus.submitting()));

    await handleAPICall(
      call: _repository.getResumeSummaries(),
      onSuccess: (List<ResumeSummaryDataDto> summaries) =>
          state.copyWith(status: const FormStatus.success(), summaries: summaries),
      onFailure: (String error) => state.copyWith(status: FormStatus.error(error: error.toString())),
    );
  }

  Future<void> fetchResumeSummaryDetail({required String fileName}) async {
    await handleAPICall(
      call: _repository.getResumeSummary(fileName),
      onSuccess: (ResumeSummaryDto summary) =>
          state.copyWith(status: const FormStatus.success(), resumeSummaryData: summary.data),
      onFailure: (String error) => state.copyWith(status: FormStatus.error(error: error.toString())),
    );
  }

  List<ResumeResultDto> prepareAnalyzedSummaries(ResumeSummaryDataDto analyzedData) {
    final List<ResumeResultDto> summaries = <ResumeResultDto>[
      ResumeResultDto(title: 'Professional Summary', items: <String>[analyzedData.summary]),
      ResumeResultDto(title: 'Technical Skills', items: analyzedData.skills.sublist(0, 5)),
      ResumeResultDto(title: 'Strengths', items: analyzedData.analysis.candidateStrengths),
      ResumeResultDto(title: 'Weaknesses', items: analyzedData.analysis.candidateWeaknesses),
      ResumeResultDto(title: 'Justification', items: <String>[analyzedData.analysis.justification]),
    ];
    return summaries;
  }
}
