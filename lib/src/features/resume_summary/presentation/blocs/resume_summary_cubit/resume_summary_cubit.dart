import 'package:ai_resume/src/features/resume_summary/domain/repositories/resume_summary_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_form_field/base_bloc.dart';
import 'package:simple_form_field/form/form_status.dart';
import 'resume_summary_state.dart';

@injectable
class ResumeSummaryCubit extends BaseBloc<void, ResumeSummaryState> {
  final ResumeSummaryRepository _repository;

  ResumeSummaryCubit(this._repository) : super(const ResumeSummaryState());

  Future<void> onLoadResumeSummaries() async {
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

  Future<void> _onLoadResumeSummaryDetail(String id) async {
    await handleAPICall(
      call: _repository.getResumeSummary(id),
      onSuccess: (summary) =>
          state.copyWith(status: const FormStatus.success(), summary: summary),
      onFailure: (error) => state.copyWith(
        status: FormStatus.error(error: error.toString()),
      ),
    );
  }
}
