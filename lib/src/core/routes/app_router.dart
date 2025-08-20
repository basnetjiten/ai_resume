import 'package:ai_resume/src/features/resume_library/presentation/pages/cv_listing/cv_listing_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.dart';

export 'app_router.gr.dart';

@Singleton()
@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(page: ResumeUploadRoute.page, initial: true),
        AutoRoute(page: CVListingRoute.page),
      ];
}
