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
    _i5.Key? key,
    required String fileName,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         CVSummaryRoute.name,
         args: CVSummaryRouteArgs(key: key, fileName: fileName),
         initialChildren: children,
       );

  static const String name = 'CVSummaryRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CVSummaryRouteArgs>();
      return _i2.CVSummaryPage(key: args.key, fileName: args.fileName);
    },
  );
}

class CVSummaryRouteArgs {
  const CVSummaryRouteArgs({this.key, required this.fileName});

  final _i5.Key? key;

  final String fileName;

  @override
  String toString() {
    return 'CVSummaryRouteArgs{key: $key, fileName: $fileName}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CVSummaryRouteArgs) return false;
    return key == other.key && fileName == other.fileName;
  }

  @override
  int get hashCode => key.hashCode ^ fileName.hashCode;
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
