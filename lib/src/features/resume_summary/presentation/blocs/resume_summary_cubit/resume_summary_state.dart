import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:ai_resume/src/features/resume_summary/domain/models/resume_summary_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_form_field/form/form_status.dart';

part 'resume_summary_state.freezed.dart';
@freezed
abstract class ResumeSummaryState with _$ResumeSummaryState {
  const factory ResumeSummaryState({
    @Default([]) List<ResumeSummaryDto> summaries,
    @Default(null) ResumeSummaryDto? summary,
    @Default(FormStatus.initial()) FormStatus status,
  }) = _ResumeSummaryState;

}