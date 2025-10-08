// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AnalysisResultsPage]
class AnalysisResultsRoute extends PageRouteInfo<void> {
  const AnalysisResultsRoute({List<PageRouteInfo>? children})
    : super(AnalysisResultsRoute.name, initialChildren: children);

  static const String name = 'AnalysisResultsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AnalysisResultsPage();
    },
  );
}

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
    required String interviewId,
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
          interviewId: pathParams.getString('interviewId'),
        ),
      );
      return InterviewDetailPage(key: args.key, interviewId: args.interviewId);
    },
  );
}

class InterviewDetailRouteArgs {
  const InterviewDetailRouteArgs({this.key, required this.interviewId});

  final Key? key;

  final String interviewId;

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
