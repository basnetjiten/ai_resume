// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ai_resume/src/features/resume_analyzer/presentation/pages/resume_upload_page.dart'
    as _i2;
import 'package:ai_resume/src/features/resume_summary/presentation/pages/cv_summary_page.dart'
    as _i1;
import 'package:auto_route/auto_route.dart' as _i3;

/// generated route for
/// [_i1.CVSummaryPage]
class CVSummaryRoute extends _i3.PageRouteInfo<void> {
  const CVSummaryRoute({List<_i3.PageRouteInfo>? children})
      : super(CVSummaryRoute.name, initialChildren: children);

  static const String name = 'CVSummaryRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.CVSummaryPage();
    },
  );
}

/// generated route for
/// [_i2.ResumeUploadPage]
class ResumeUploadRoute extends _i3.PageRouteInfo<void> {
  const ResumeUploadRoute({List<_i3.PageRouteInfo>? children})
      : super(ResumeUploadRoute.name, initialChildren: children);

  static const String name = 'ResumeUploadRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.ResumeUploadPage();
    },
  );
}
