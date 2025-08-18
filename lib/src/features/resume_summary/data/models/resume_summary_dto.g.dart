// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResumeSummaryDto _$ResumeSummaryDtoFromJson(Map<String, dynamic> json) =>
    _ResumeSummaryDto(
      id: json['id'] as String,
      title: json['title'] as String,
      summary: json['summary'] as String,
      createdAt: json['created_at'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ResumeSummaryDtoToJson(_ResumeSummaryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'created_at': instance.createdAt,
      'metadata': instance.metadata,
    };
