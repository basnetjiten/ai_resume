import 'package:ai_resume/src/core/services/network_info_service.dart';
import 'package:ai_resume/src/features/resume_summary/data/datasources/resume_library_local_data_source.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ai_resume/src/core/typedefs/typedefs.dart';
import 'package:ai_resume/src/features/resume_summary/data/datasources/resume_summary_remote_data_source.dart';
import 'package:ai_resume/src/features/resume_summary/domain/repositories/resume_summary_repository.dart';
import 'package:ai_resume/src/core/base/base_repository.dart';
import 'package:simple_form_field/errors/app_error.dart';

@Singleton(as: ResumeSummaryRepository)
class ResumeSummaryRepositoryImpl extends BaseRepository implements ResumeSummaryRepository {
  ResumeSummaryRepositoryImpl(this._remoteDataSource, this._localDataSource) : super();
  final ResumeSummaryRemoteDataSource _remoteDataSource;
  final ResumeLibraryLocalDataSource _localDataSource;

  @override
  EitherResponse<ResumeSummaryDto> getResumeSummary(String fileName) {
    return processApiCall(
      call: _remoteDataSource.getResumeSummary(fileName),
      onSuccess: (ResumeSummaryDto resumeSummary) => resumeSummary,
    );
  }

  @override
  EitherResponse<List<ResumeSummaryDataDto>> getResumeSummaries() async {
    final bool isConnected = await InternetConnectionHelper.checkConnection();

    if (isConnected) {
      return processApiCall(
        call: _remoteDataSource.getResumeSummaries(),
        onSuccess: (List<ResumeSummaryDataDto> summaries) {
          _localDataSource.cacheResumes(summaries);
          return summaries;
        },
      );
    } else {
      final List<ResumeSummaryDataDto> cachedSummaries = await _localDataSource.getCachedResumes();
      if (cachedSummaries.isNotEmpty) {
        return right(cachedSummaries);
      }
      return left(const AppError.noInternet());
    }
  }
}
