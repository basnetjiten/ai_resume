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
        AutoRoute(page: CVUploadRoute.page, initial: true),
      ];
}
