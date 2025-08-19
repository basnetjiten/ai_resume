import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ai_resume/src/features/resume_summary/domain/models/resume_summary_model.dart';

part 'resume_summary_dto.freezed.dart';

part 'resume_summary_dto.g.dart';

@freezed
abstract class ResumeSummaryDto with _$ResumeSummaryDto {
  const factory ResumeSummaryDto({
    required bool success,
    required ResumeSummaryDataDto data,
  }) = _ResumeSummaryDto;

  factory ResumeSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ResumeSummaryDtoFromJson(json);
}

@freezed
abstract class ResumeSummaryDataDto with _$ResumeSummaryDataDto {
  const factory ResumeSummaryDataDto({
    @JsonKey(name: '_id') required String id,
    required String cvId,
    required String candidateName,
    required String role,
    String? experience,
    required String seniority,
    required List<String> skills,
    required String summary,
    required String uploadedDate,
    required AnalysisDto analysis,
  }) = _ResumeSummaryDataDto;

  factory ResumeSummaryDataDto.fromJson(Map<String, dynamic> json) =>
      _$ResumeSummaryDataDtoFromJson(json);
}

@freezed
abstract class AnalysisDto with _$AnalysisDto {
  const factory AnalysisDto({
    required List<String> candidateStrengths,
    required List<String> candidateWeaknesses,
    required RiskFactorDto riskFactor,
    required RewardFactorDto rewardFactor,
    required String overallFitRating,
    required String justification,
  }) = _AnalysisDto;

  factory AnalysisDto.fromJson(Map<String, dynamic> json) =>
      _$AnalysisDtoFromJson(json);
}

@freezed
abstract class RiskFactorDto with _$RiskFactorDto {
  const factory RiskFactorDto({
    required String score,
    required String explanation,
  }) = _RiskFactorDto;

  factory RiskFactorDto.fromJson(Map<String, dynamic> json) =>
      _$RiskFactorDtoFromJson(json);
}

@freezed
abstract class RewardFactorDto with _$RewardFactorDto {
  const factory RewardFactorDto({
    required String score,
    required String value,
    required String fit,
  }) = _RewardFactorDto;

  factory RewardFactorDto.fromJson(Map<String, dynamic> json) =>
      _$RewardFactorDtoFromJson(json);
}
