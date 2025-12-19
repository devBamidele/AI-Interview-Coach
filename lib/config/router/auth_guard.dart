import 'package:auto_route/auto_route.dart';

import '../../features/auth/application/auth_manager.dart';
import 'app_router.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (AuthManager.instance.isLoggedIn) {
      // User is authenticated, allow navigation
      resolver.next(true);
    } else {
      // User is not authenticated, redirect to login
      router.replaceAll([const LoginRoute()]);
      resolver.next(false);
    }
  }
}
