import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/auth/application/auth_manager.dart';
import 'app_router.dart';

class AuthGuard extends AutoRouteGuard {
  final Ref _ref;

  AuthGuard(this._ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // Watch the state instead of reading the notifier
    final authState = _ref.read(authManagerProvider);

    if (authState.isLoggedIn) {
      // User is authenticated, allow navigation
      resolver.next(true);
    } else {
      // User is not authenticated, redirect to login
      router.replaceAll([const LoginRoute()]);
      resolver.next(false);
    }
  }
}
