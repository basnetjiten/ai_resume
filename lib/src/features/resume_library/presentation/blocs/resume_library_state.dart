import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_form_field/form/form_status.dart';

part 'resume_library_state.freezed.dart';

@freezed
abstract class ResumeLibraryState with _$ResumeLibraryState {
  const factory ResumeLibraryState({
    @Default(<dynamic>[]) List<ResumeSummaryDataDto> summaries,
    @Default(FormStatus.initial()) FormStatus status,
  }) = _ResumeLibraryState;
}
