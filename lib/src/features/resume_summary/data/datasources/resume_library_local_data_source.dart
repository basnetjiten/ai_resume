import 'dart:convert';
import 'package:ai_resume/localization/arb/l10n.dart';
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

  static const String _cacheKey = 'cached_resumes';
  final LocalStorage _hiveLocalStorage;

  @override
  Future<List<ResumeSummaryDataDto>> getCachedResumes() async {
    try {
      final dynamic cached = await _hiveLocalStorage.get(key: _cacheKey);
      if (cached == null || cached is! List) {
        return <ResumeSummaryDataDto>[];
      }

      final String storedData = jsonEncode(cached);
      final List<Map<String,dynamic>> jsonList = jsonDecode(storedData);

      return jsonList.map<ResumeSummaryDataDto>((Map<String, dynamic> e) => ResumeSummaryDataDto.fromJson(e as Map<String, dynamic>)).toList();
    } catch (_) {
      return <ResumeSummaryDataDto>[];
    }
  }

  @override
  Future<void> cacheResumes(List<ResumeSummaryDataDto> resumes) async {
    try {
      if (kDebugMode) {
        AppLogger.logInfo(info: localization.cachingResumes);
      }
      await _hiveLocalStorage.put(
        key: _cacheKey, 
        value: resumes.map((ResumeSummaryDataDto e) => e.toJson()).toList()
      );
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
