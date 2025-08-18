import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_resume/src/features/resume_summary/domain/models/resume_summary_model.dart';

part 'resume_summary_dto.freezed.dart';
part 'resume_summary_dto.g.dart';

@freezed
abstract class ResumeSummaryDto with _$ResumeSummaryDto {
  const factory ResumeSummaryDto({
    required String id,
    required String title,
    required String summary,
    @JsonKey(name: 'created_at') required String createdAt,
    Map<String, dynamic>? metadata,
  }) = _ResumeSummaryDto;

  factory ResumeSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ResumeSummaryDtoFromJson(json);

  factory ResumeSummaryDto.fromDomain(ResumeSummary summary) {
    return ResumeSummaryDto(
      id: summary.id,
      title: summary.title,
      summary: summary.summary,
      createdAt: summary.createdAt.toIso8601String(),
      metadata: summary.metadata,
    );
  }
}

extension ResumeSummaryDtoX on ResumeSummaryDto {
  ResumeSummary toDomain() {
    return ResumeSummary(
      id: id,
      title: title,
      summary: summary,
      createdAt: DateTime.parse(createdAt),
      metadata: metadata,
    );
  }
}
