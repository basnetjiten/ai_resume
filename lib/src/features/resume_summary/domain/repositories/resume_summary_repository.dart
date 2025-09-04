import 'package:ai_resume/src/core/typedefs/typedefs.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';

abstract class ResumeSummaryRepository {
  /// Fetches all resume summaries
  EitherResponse<List<ResumeSummaryDataDto>> getResumeSummaries();

  /// Fetches a single resume summary by its ID
  EitherResponse<ResumeSummaryDto> getResumeSummary(String fileName);
}
