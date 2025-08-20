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
import 'package:ai_resume/src/features/resume_library/presentation/pages/cv_listing/cv_listing_page.dart'
    as _i1;
import 'package:ai_resume/src/features/resume_summary/presentation/pages/cv_summary_page.dart'
    as _i2;
import 'package:auto_route/auto_route.dart' as _i4;

/// generated route for
/// [_i1.CVListingPage]
class CVListingRoute extends _i4.PageRouteInfo<void> {
  const CVListingRoute({List<_i4.PageRouteInfo>? children})
    : super(CVListingRoute.name, initialChildren: children);

  static const String name = 'CVListingRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.CVListingPage();
    },
  );
}

/// generated route for
/// [_i2.CVSummaryPage]
class CVSummaryRoute extends _i4.PageRouteInfo<void> {
  const CVSummaryRoute({List<_i4.PageRouteInfo>? children})
    : super(CVSummaryRoute.name, initialChildren: children);

  static const String name = 'CVSummaryRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.CVSummaryPage();
    },
  );
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
