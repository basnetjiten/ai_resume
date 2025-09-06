import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
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
    AutoRoute(page: AnalyzedResumesRoute.page),
    CustomRoute<PageRouteInfo>(
      page: CVSummaryRoute.page,
      transitionsBuilder: (_, Animation<double> animation, _, Widget child) {
        return FadeTransition(opacity: animation, child: child);
      },
      durationInMilliseconds: 500,
    ),
    CustomRoute<PageRouteInfo>(
      page: ResumeAnalyzingRoute.page,
      transitionsBuilder: (_, Animation<double> animation, _, Widget child) {
        return FadeTransition(opacity: animation, child: child);
      },
      durationInMilliseconds: 500,
    ),

    CustomRoute<PageRouteInfo>(
      page: AnalyzedResumesRoute.page,
      transitionsBuilder:
          (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
          child: child,
        );
      },
      durationInMilliseconds: 500,
    ),
  ];



}
