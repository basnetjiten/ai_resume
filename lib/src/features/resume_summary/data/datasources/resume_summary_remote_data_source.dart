import 'dart:convert';

import 'package:ai_resume/src/core/base/base_remote_source.dart';
import 'package:ai_resume/src/core/services/logging/app_logger.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:injectable/injectable.dart';

abstract class ResumeSummaryRemoteDataSource {
  Future<List<ResumeSummaryDataDto>> getResumeSummaries();

  Future<ResumeSummaryDto> getResumeSummary(String fileName);
}

@Singleton(as: ResumeSummaryRemoteDataSource)
class ResumeSummaryRemoteDataSourceImpl extends BaseRemoteSource
    implements ResumeSummaryRemoteDataSource {
  ResumeSummaryRemoteDataSourceImpl(super.dio);

  @override
  Future<List<ResumeSummaryDataDto>> getResumeSummaries() async {
    return networkRequest<List<ResumeSummaryDataDto>>(
      request: (dio) => dio.get('resume-summaries'),
      onResponse: (responseData){

        AppLogger.logInfo(info: "NEW DAA ${jsonEncode(responseData['data'])}");
       return (responseData['data'] as List)
            .map((json) => ResumeSummaryDataDto.fromJson(json))
            .toList();
      },
    );
  }

  @override
  Future<ResumeSummaryDto> getResumeSummary(String fileName) async {
    return networkRequest<ResumeSummaryDto>(
      request: (dio) => dio.get('resume-summary', queryParameters: {"originalName": fileName}),
      onResponse: (data) => ResumeSummaryDto.fromJson(data),
    );
  }
}
