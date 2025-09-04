import 'package:ai_resume/src/features/resume_library/presentation/blocs/resume_library_state.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:ai_resume/src/features/resume_summary/domain/repositories/resume_summary_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_form_field/base_bloc.dart';
import 'package:simple_form_field/form/form_status.dart';

@injectable
class ResumeLibraryCubit extends BaseBloc<void, ResumeLibraryState> {
  ResumeLibraryCubit(this._repository) : super(const ResumeLibraryState());
  final ResumeSummaryRepository _repository;

  Future<void> fetchResumeSummaries() async {
    emit(state.copyWith(status: const FormStatus.submitting()));

    await handleAPICall(
      call: _repository.getResumeSummaries(),
      onSuccess: (List<ResumeSummaryDataDto> summaries) =>
          state.copyWith(status: const FormStatus.success(), summaries: summaries),
      onFailure: (String error) => state.copyWith(
        summaries: <ResumeSummaryDataDto>[],
        status: FormStatus.error(error: error.toString()),
      ),
    );
  }
}
