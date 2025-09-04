// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ai_resume/src/features/resume_analyzer/presentation/pages/resume_upload_page.dart'
    as _i3;
import 'package:ai_resume/src/features/resume_library/presentation/pages/analyzed_resumes/analyzed_resumes_page.dart'
    as _i1;
import 'package:ai_resume/src/features/resume_summary/presentation/pages/cv_summary_page.dart'
    as _i2;
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

/// generated route for
/// [_i1.AnalyzedResumesPage]
class AnalyzedResumesRoute extends _i4.PageRouteInfo<void> {
  const AnalyzedResumesRoute({List<_i4.PageRouteInfo>? children})
    : super(AnalyzedResumesRoute.name, initialChildren: children);

  static const String name = 'AnalyzedResumesRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.AnalyzedResumesPage();
    },
  );
}

/// generated route for
/// [_i2.CVSummaryPage]
class CVSummaryRoute extends _i4.PageRouteInfo<CVSummaryRouteArgs> {
  CVSummaryRoute({
    required String fileName,
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         CVSummaryRoute.name,
         args: CVSummaryRouteArgs(fileName: fileName, key: key),
         initialChildren: children,
       );

  static const String name = 'CVSummaryRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CVSummaryRouteArgs>();
      return _i2.CVSummaryPage(fileName: args.fileName, key: args.key);
    },
  );
}

class CVSummaryRouteArgs {
  const CVSummaryRouteArgs({required this.fileName, this.key});

  final String fileName;

  final _i5.Key? key;

  @override
  String toString() {
    return 'CVSummaryRouteArgs{fileName: $fileName, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CVSummaryRouteArgs) return false;
    return fileName == other.fileName && key == other.key;
  }

  @override
  int get hashCode => fileName.hashCode ^ key.hashCode;
}

/// generated route for
/// [_i3.ResumeUploadPage]
class ResumeUploadRoute extends _i4.PageRouteInfo<void> {
  const ResumeUploadRoute({List<_i4.PageRouteInfo>? children})
    : super(ResumeUploadRoute.name, initialChildren: children);

  static const String name = 'ResumeUploadRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.ResumeUploadPage();
    },
  );
}
