// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResumeSummaryDto _$ResumeSummaryDtoFromJson(Map<String, dynamic> json) =>
    _ResumeSummaryDto(
      success: json['success'] as bool,
      data: ResumeSummaryDataDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResumeSummaryDtoToJson(_ResumeSummaryDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.toJson(),
    };

_ResumeSummaryDataDto _$ResumeSummaryDataDtoFromJson(
  Map<String, dynamic> json,
) => _ResumeSummaryDataDto(
  id: json['_id'] as String,
  candidateName: json['candidateName'] as String,
  role: json['role'] as String,
  experience: json['experience'] as String? ?? '-',
  seniority: json['seniority'] as String,
  skills: (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
  summary: json['summary'] as String,
  uploadedDate: json['uploadedDate'] as String?,
  analysis: AnalysisDto.fromJson(json['analysis'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ResumeSummaryDataDtoToJson(
  _ResumeSummaryDataDto instance,
) => <String, dynamic>{
  '_id': instance.id,
  'candidateName': instance.candidateName,
  'role': instance.role,
  'experience': instance.experience,
  'seniority': instance.seniority,
  'skills': instance.skills,
  'summary': instance.summary,
  'uploadedDate': instance.uploadedDate,
  'analysis': instance.analysis.toJson(),
};

_AnalysisDto _$AnalysisDtoFromJson(Map<String, dynamic> json) => _AnalysisDto(
  candidateStrengths: (json['candidateStrengths'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  candidateWeaknesses: (json['candidateWeaknesses'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  riskFactor: RiskFactorDto.fromJson(
    json['riskFactor'] as Map<String, dynamic>,
  ),
  rewardFactor: RewardFactorDto.fromJson(
    json['rewardFactor'] as Map<String, dynamic>,
  ),
  overallFitRating: json['overallFitRating'] as String,
  justification: json['justification'] as String,
);

Map<String, dynamic> _$AnalysisDtoToJson(_AnalysisDto instance) =>
    <String, dynamic>{
      'candidateStrengths': instance.candidateStrengths,
      'candidateWeaknesses': instance.candidateWeaknesses,
      'riskFactor': instance.riskFactor.toJson(),
      'rewardFactor': instance.rewardFactor.toJson(),
      'overallFitRating': instance.overallFitRating,
      'justification': instance.justification,
    };

_RiskFactorDto _$RiskFactorDtoFromJson(Map<String, dynamic> json) =>
    _RiskFactorDto(
      score: json['score'] as String,
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$RiskFactorDtoToJson(_RiskFactorDto instance) =>
    <String, dynamic>{
      'score': instance.score,
      'explanation': instance.explanation,
    };

_RewardFactorDto _$RewardFactorDtoFromJson(Map<String, dynamic> json) =>
    _RewardFactorDto(
      score: json['score'] as String,
      value: json['value'] as String,
      fit: json['fit'] as String,
    );

Map<String, dynamic> _$RewardFactorDtoToJson(_RewardFactorDto instance) =>
    <String, dynamic>{
      'score': instance.score,
      'value': instance.value,
      'fit': instance.fit,
    };
