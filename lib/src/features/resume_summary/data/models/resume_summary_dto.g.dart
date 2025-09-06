// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResumeSummaryDtoImpl _$$ResumeSummaryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResumeSummaryDtoImpl(
      success: json['success'] as bool,
      data: ResumeSummaryDataDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResumeSummaryDtoImplToJson(
        _$ResumeSummaryDtoImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.toJson(),
    };

_$ResumeSummaryDataDtoImpl _$$ResumeSummaryDataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResumeSummaryDataDtoImpl(
      id: json['_id'] as String,
      candidateName: json['candidateName'] as String,
      role: json['role'] as String,
      seniority: json['seniority'] as String,
      skills:
          (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
      summary: json['summary'] as String,
      analysis: AnalysisDto.fromJson(json['analysis'] as Map<String, dynamic>),
      experience: json['experience'] as String? ?? '-',
      uploadedDate: json['uploadedDate'] as String?,
    );

Map<String, dynamic> _$$ResumeSummaryDataDtoImplToJson(
        _$ResumeSummaryDataDtoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'candidateName': instance.candidateName,
      'role': instance.role,
      'seniority': instance.seniority,
      'skills': instance.skills,
      'summary': instance.summary,
      'analysis': instance.analysis.toJson(),
      'experience': instance.experience,
      'uploadedDate': instance.uploadedDate,
    };

_$AnalysisDtoImpl _$$AnalysisDtoImplFromJson(Map<String, dynamic> json) =>
    _$AnalysisDtoImpl(
      candidateStrengths: (json['candidateStrengths'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      candidateWeaknesses: (json['candidateWeaknesses'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      riskFactor:
          RiskFactorDto.fromJson(json['riskFactor'] as Map<String, dynamic>),
      rewardFactor: RewardFactorDto.fromJson(
          json['rewardFactor'] as Map<String, dynamic>),
      overallFitRating: json['overallFitRating'] as String,
      justification: json['justification'] as String,
    );

Map<String, dynamic> _$$AnalysisDtoImplToJson(_$AnalysisDtoImpl instance) =>
    <String, dynamic>{
      'candidateStrengths': instance.candidateStrengths,
      'candidateWeaknesses': instance.candidateWeaknesses,
      'riskFactor': instance.riskFactor.toJson(),
      'rewardFactor': instance.rewardFactor.toJson(),
      'overallFitRating': instance.overallFitRating,
      'justification': instance.justification,
    };

_$RiskFactorDtoImpl _$$RiskFactorDtoImplFromJson(Map<String, dynamic> json) =>
    _$RiskFactorDtoImpl(
      score: json['score'] as String,
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$$RiskFactorDtoImplToJson(_$RiskFactorDtoImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'explanation': instance.explanation,
    };

_$RewardFactorDtoImpl _$$RewardFactorDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RewardFactorDtoImpl(
      score: json['score'] as String,
      value: json['value'] as String,
      fit: json['fit'] as String,
    );

Map<String, dynamic> _$$RewardFactorDtoImplToJson(
        _$RewardFactorDtoImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'value': instance.value,
      'fit': instance.fit,
    };
