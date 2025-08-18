import 'package:ai_resume/src/core/typedefs/typedefs.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:ai_resume/src/features/resume_summary/domain/models/resume_summary_model.dart';

abstract class ResumeSummaryRepository {
  /// Fetches all resume summaries
  EitherResponse<List<ResumeSummaryDto>> getResumeSummaries();

  /// Fetches a single resume summary by its ID
  EitherResponse<ResumeSummaryDto> getResumeSummary(String id);
}
