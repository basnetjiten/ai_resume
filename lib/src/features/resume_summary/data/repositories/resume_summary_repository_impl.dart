import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:ai_resume/src/core/typedefs/typedefs.dart';
import 'package:ai_resume/src/features/resume_summary/data/datasources/resume_summary_remote_data_source.dart';
import 'package:ai_resume/src/features/resume_summary/domain/repositories/resume_summary_repository.dart';
import 'package:ai_resume/src/core/base/base_repository.dart';

@Singleton(as: ResumeSummaryRepository)
class ResumeSummaryRepositoryImpl extends BaseRepository
    implements ResumeSummaryRepository {
  final ResumeSummaryRemoteDataSource remoteDataSource;

  ResumeSummaryRepositoryImpl({required this.remoteDataSource}) : super();

  @override
  EitherResponse<ResumeSummaryDto> getResumeSummary(String id) {
    return processApiCall(
      call: remoteDataSource.getResumeSummary(id),
      onSuccess: (resumeSummary) => resumeSummary,
    );
  }

  @override
  EitherResponse<List<ResumeSummaryDto>> getResumeSummaries() {
    return processApiCall(
      call: remoteDataSource.getResumeSummaries(),
      onSuccess: (summaries) => summaries,
    );
  }
}
