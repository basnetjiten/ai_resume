import 'package:ai_resume/src/core/base/base_remote_source.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:injectable/injectable.dart';

abstract class ResumeSummaryRemoteDataSource {
  Future<List<ResumeSummaryDto>> getResumeSummaries();

  Future<ResumeSummaryDto> getResumeSummary(String id);
}

@Singleton(as: ResumeSummaryRemoteDataSource)
class ResumeSummaryRemoteDataSourceImpl extends BaseRemoteSource
    implements ResumeSummaryRemoteDataSource {
  ResumeSummaryRemoteDataSourceImpl(super.dio);

  @override
  Future<List<ResumeSummaryDto>> getResumeSummaries() async {
    return networkRequest<List<ResumeSummaryDto>>(
      request: (dio) => dio.get('resume-summaries'),
      onResponse: (data) => (data as List)
          .map((json) => ResumeSummaryDto.fromJson(json))
          .toList(),
    );
  }

  @override
  Future<ResumeSummaryDto> getResumeSummary(String id) async {
    return networkRequest<ResumeSummaryDto>(
      request: (dio) => dio.get('resume-summary', queryParameters: {"id": "FUELED-777"}),
      onResponse: (data) => ResumeSummaryDto.fromJson(data),
    );
  }
}
