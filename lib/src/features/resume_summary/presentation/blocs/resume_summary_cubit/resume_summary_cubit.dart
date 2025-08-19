import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:ai_resume/src/features/resume_summary/domain/repositories/resume_summary_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_form_field/base_bloc.dart';
import 'package:simple_form_field/form/form_status.dart';
import '../../pages/widgets/summary_card_widget.dart';
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

  Future<void> fetchResumeSummaryDetail({String? id}) async {
    await handleAPICall(
      call: _repository.getResumeSummary("id"),
      onSuccess: (summary) => state.copyWith(
          status: const FormStatus.success(), resumeSummaryData: summary.data),
      onFailure: (error) => state.copyWith(
        status: FormStatus.error(error: error.toString()),
      ),
    );
  }

  List<CVCategory> getAnalyzedSummaries() {
    ResumeSummaryDataDto? analyzedData = state.resumeSummaryData;
    final List<CVCategory> summaries = [
      CVCategory(
        title: 'Professional Summary',
        items: [
          analyzedData?.summary ?? '',
        ],
      ),
      CVCategory(
        title: 'Technical Skills',
        items: analyzedData?.skills.sublist(0, 5) ?? [],
      ),
      CVCategory(
        title: 'Strengths',
        items: analyzedData?.analysis.candidateStrengths ?? [],
      ),
      CVCategory(
        title: 'Weaknesses',
        items: analyzedData?.analysis.candidateWeaknesses ?? [],
      ),
      CVCategory(title: 'Justification', items: [
        analyzedData?.analysis.justification ?? '',
      ]),
    ];
    return summaries;
  }
}
