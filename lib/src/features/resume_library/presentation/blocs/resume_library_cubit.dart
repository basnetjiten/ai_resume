import 'package:ai_resume/src/features/resume_library/presentation/blocs/resume_library_state.dart';
import 'package:ai_resume/src/features/resume_summary/domain/repositories/resume_summary_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_form_field/base_bloc.dart';
import 'package:simple_form_field/form/form_status.dart';

@injectable
class ResumeLibraryCubit extends BaseBloc<void, ResumeLibraryState> {
  final ResumeSummaryRepository _repository;

  ResumeLibraryCubit(this._repository) : super(const ResumeLibraryState());

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
}
