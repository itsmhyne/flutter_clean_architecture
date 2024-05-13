import 'package:auto_route/auto_route.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/pages/signin_page.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/pages/splashscreen_page.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/pages/welcome_page.dart';
import 'package:flutter_clean_architecture/features/main/presentation/pages/home_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashscreenRoute.page, initial: true),
        AutoRoute(page: WelcomeRoute.page),
        AutoRoute(page: SigninRoute.page),
        AutoRoute(page: SignupRoute.page),
        AutoRoute(page: HomeRoute.page),
      ];
}
