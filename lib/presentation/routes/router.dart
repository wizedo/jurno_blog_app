
part of 'router_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page ,path: "/",initial: true),
    //no need to give path again as we have already given the path
    AutoRoute(page: OnboardRoute.page),
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: GeneralRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: TagsRoute.page),
    AutoRoute(page: CategoriesRoute.page),
    AutoRoute(page: ProfileRoute.page),
    AutoRoute(page: HomeDetailsRoute.page),
  ];
}
