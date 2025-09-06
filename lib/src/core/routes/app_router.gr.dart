// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ai_resume/src/features/resume_analyzer/presentation/pages/resume_analyzing_page.dart'
    as _i3;
import 'package:ai_resume/src/features/resume_analyzer/presentation/pages/resume_upload_page.dart'
    as _i4;
import 'package:ai_resume/src/features/resume_library/presentation/pages/analyzed_resumes/analyzed_resumes_page.dart'
    as _i1;
import 'package:ai_resume/src/features/resume_summary/presentation/pages/cv_summary_page.dart'
    as _i2;
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

/// generated route for
/// [_i1.AnalyzedResumesPage]
class AnalyzedResumesRoute extends _i5.PageRouteInfo<void> {
  const AnalyzedResumesRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AnalyzedResumesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnalyzedResumesRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.AnalyzedResumesPage();
    },
  );
}

/// generated route for
/// [_i2.CVSummaryPage]
class CVSummaryRoute extends _i5.PageRouteInfo<CVSummaryRouteArgs> {
  CVSummaryRoute({
    required String fileName,
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          CVSummaryRoute.name,
          args: CVSummaryRouteArgs(
            fileName: fileName,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CVSummaryRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CVSummaryRouteArgs>();
      return _i2.CVSummaryPage(
        fileName: args.fileName,
        key: args.key,
      );
    },
  );
}

class CVSummaryRouteArgs {
  const CVSummaryRouteArgs({
    required this.fileName,
    this.key,
  });

  final String fileName;

  final _i6.Key? key;

  @override
  String toString() {
    return 'CVSummaryRouteArgs{fileName: $fileName, key: $key}';
  }
}

/// generated route for
/// [_i3.ResumeAnalyzingPage]
class ResumeAnalyzingRoute extends _i5.PageRouteInfo<ResumeAnalyzingRouteArgs> {
  ResumeAnalyzingRoute({
    required String fileName,
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          ResumeAnalyzingRoute.name,
          args: ResumeAnalyzingRouteArgs(
            fileName: fileName,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ResumeAnalyzingRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResumeAnalyzingRouteArgs>();
      return _i3.ResumeAnalyzingPage(
        fileName: args.fileName,
        key: args.key,
      );
    },
  );
}

class ResumeAnalyzingRouteArgs {
  const ResumeAnalyzingRouteArgs({
    required this.fileName,
    this.key,
  });

  final String fileName;

  final _i6.Key? key;

  @override
  String toString() {
    return 'ResumeAnalyzingRouteArgs{fileName: $fileName, key: $key}';
  }
}

/// generated route for
/// [_i4.ResumeUploadPage]
class ResumeUploadRoute extends _i5.PageRouteInfo<void> {
  const ResumeUploadRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ResumeUploadRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResumeUploadRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.ResumeUploadPage();
    },
  );
}
