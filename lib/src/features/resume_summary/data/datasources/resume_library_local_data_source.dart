import 'package:ai_resume/localization/arb/l10n.dart';
import 'package:ai_resume/src/core/constants/env_keys.dart';
import 'package:ai_resume/src/core/services/logging/app_logger.dart';
import 'package:ai_resume/src/features/resume_summary/data/models/resume_summary_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_local_storage/hive_local_storage.dart';
import 'package:injectable/injectable.dart';

abstract class ResumeLibraryLocalDataSource {
  Future<List<ResumeSummaryDataDto>> getCachedResumes();

  Future<void> cacheResumes(List<ResumeSummaryDataDto> resumes);

  Future<void> clearCache();
}

@Singleton(as: ResumeLibraryLocalDataSource)
class ResumeLibraryLocalDataSourceImpl implements ResumeLibraryLocalDataSource {
  ResumeLibraryLocalDataSourceImpl(this._hiveLocalStorage);

  final LocalStorage _hiveLocalStorage;

  @override
  Future<List<ResumeSummaryDataDto>> getCachedResumes() async {
    try {
      final cached = await _hiveLocalStorage.get(key: EnvKeys.cacheKey);
      if (cached is! List) {
        return [];
      }

      return cached.whereType<Map<String, dynamic>>().map(ResumeSummaryDataDto.fromJson).toList();
    } catch (e) {
      AppLogger.logError(error: 'Failed to get cached resumes: $e');
      return <ResumeSummaryDataDto>[];
    }
  }

  @override
  Future<void> cacheResumes(List<ResumeSummaryDataDto> resumes) async {
    try {
      if (kDebugMode) {
        AppLogger.logInfo(info: localization.cachingResumes);
        AppLogger.logInfo(info: 'TO STORE DATA: ${resumes.map((e) => e.toJson())}');
      }

      final List<Map<String, dynamic>> jsonList = resumes.map((ResumeSummaryDataDto e) => e.toJson()).toList();
      await _hiveLocalStorage.put(key: EnvKeys.cacheKey, value: jsonList);
    } catch (e) {
      AppLogger.logError(error: '${localization.cacheError}: $e');
      rethrow;
    }
  }

  @override
  Future<void> clearCache() async {
    await _hiveLocalStorage.clear();
  }
}
