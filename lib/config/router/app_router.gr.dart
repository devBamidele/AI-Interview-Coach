// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [InterviewDetailPage]
class InterviewDetailRoute extends PageRouteInfo<InterviewDetailRouteArgs> {
  InterviewDetailRoute({
    Key? key,
    String? interviewId,
    List<PageRouteInfo>? children,
  }) : super(
         InterviewDetailRoute.name,
         args: InterviewDetailRouteArgs(key: key, interviewId: interviewId),
         rawPathParams: {'interviewId': interviewId},
         initialChildren: children,
       );

  static const String name = 'InterviewDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<InterviewDetailRouteArgs>(
        orElse: () => InterviewDetailRouteArgs(
          interviewId: pathParams.optString('interviewId'),
        ),
      );
      return InterviewDetailPage(key: args.key, interviewId: args.interviewId);
    },
  );
}

class InterviewDetailRouteArgs {
  const InterviewDetailRouteArgs({this.key, this.interviewId});

  final Key? key;

  final String? interviewId;

  @override
  String toString() {
    return 'InterviewDetailRouteArgs{key: $key, interviewId: $interviewId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! InterviewDetailRouteArgs) return false;
    return key == other.key && interviewId == other.interviewId;
  }

  @override
  int get hashCode => key.hashCode ^ interviewId.hashCode;
}

/// generated route for
/// [InterviewListPage]
class InterviewListRoute extends PageRouteInfo<void> {
  const InterviewListRoute({List<PageRouteInfo>? children})
    : super(InterviewListRoute.name, initialChildren: children);

  static const String name = 'InterviewListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InterviewListPage();
    },
  );
}

/// generated route for
/// [InterviewPage]
class InterviewRoute extends PageRouteInfo<void> {
  const InterviewRoute({List<PageRouteInfo>? children})
    : super(InterviewRoute.name, initialChildren: children);

  static const String name = 'InterviewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InterviewPage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [SignupPage]
class SignupRoute extends PageRouteInfo<void> {
  const SignupRoute({List<PageRouteInfo>? children})
    : super(SignupRoute.name, initialChildren: children);

  static const String name = 'SignupRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignupPage();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}
