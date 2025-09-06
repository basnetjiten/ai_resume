import 'package:ai_resume/src/core/base/base_remote_source.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class ResumeSummaryRemoteDataSource {
  Future<List<ResumeSummaryDataDto>> getResumeSummaries();

  Future<ResumeSummaryDto> getResumeSummary(String fileName);
}

@Singleton(as: ResumeSummaryRemoteDataSource)
class ResumeSummaryRemoteDataSourceImpl extends BaseRemoteSource implements ResumeSummaryRemoteDataSource {
  ResumeSummaryRemoteDataSourceImpl(super.dio);

  @override
  Future<List<ResumeSummaryDataDto>> getResumeSummaries() async {
    return networkRequest<List<ResumeSummaryDataDto>>(
      request: (Dio dio) => dio.get('resume-summaries'),
      onResponse: (summaries) {
        return (summaries['data'] as List).map((json) => ResumeSummaryDataDto.fromJson(json)).toList();
      },
    );
  }

  @override
  Future<ResumeSummaryDto> getResumeSummary(String fileName) async {
    return networkRequest<ResumeSummaryDto>(
      request: (Dio dio) =>
          dio.get<Map<String, dynamic>>('resume-summary', queryParameters: <String, dynamic>{"originalName": fileName}),
      onResponse: (data) => ResumeSummaryDto.fromJson(data),
    );
  }
}
