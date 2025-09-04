import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_form_field/form/form_status.dart';

part 'resume_summary_state.freezed.dart';

@freezed
abstract class ResumeSummaryState with _$ResumeSummaryState {
  const factory ResumeSummaryState({
    @Default(<ResumeSummaryDataDto>[]) List<ResumeSummaryDataDto> summaries,
    @Default(null) ResumeSummaryDataDto? resumeSummaryData,
    @Default(FormStatus.initial()) FormStatus status,
  }) = _ResumeSummaryState;
}
