// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../view/education_statue_view.dart' as _i3;
import '../../view/express_yourself_view.dart' as _i1;
import '../../view/first_page_view.dart' as _i2;
import '../../view_model/express_yourself_view_model.dart' as _i6;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    ExpressYourselfPageViewRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ExpressYourselfView(),
      );
    },
    FirstPageViewRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.FirstPageView(),
      );
    },
    EducationStatueViewRoute.name: (routeData) {
      final args = routeData.argsAs<EducationStatueViewRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.EducationStatueView(
          key: args.key,
          provider: args.provider,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          ExpressYourselfPageViewRoute.name,
          path: '/express-yourself-view',
        ),
        _i4.RouteConfig(
          FirstPageViewRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          EducationStatueViewRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.ExpressYourselfView]
class ExpressYourselfPageViewRoute extends _i4.PageRouteInfo<void> {
  const ExpressYourselfPageViewRoute()
      : super(
          ExpressYourselfPageViewRoute.name,
          path: '/express-yourself-view',
        );

  static const String name = 'ExpressYourselfPageViewRoute';
}

/// generated route for
/// [_i2.FirstPageView]
class FirstPageViewRoute extends _i4.PageRouteInfo<void> {
  const FirstPageViewRoute()
      : super(
          FirstPageViewRoute.name,
          path: '/',
        );

  static const String name = 'FirstPageViewRoute';
}

/// generated route for
/// [_i3.EducationStatueView]
class EducationStatueViewRoute
    extends _i4.PageRouteInfo<EducationStatueViewRouteArgs> {
  EducationStatueViewRoute({
    _i5.Key? key,
    required _i6.ExpressYourselfViewModel provider,
  }) : super(
          EducationStatueViewRoute.name,
          path: '/',
          args: EducationStatueViewRouteArgs(
            key: key,
            provider: provider,
          ),
        );

  static const String name = 'EducationStatueViewRoute';
}

class EducationStatueViewRouteArgs {
  const EducationStatueViewRouteArgs({
    this.key,
    required this.provider,
  });

  final _i5.Key? key;

  final _i6.ExpressYourselfViewModel provider;

  @override
  String toString() {
    return 'EducationStatueViewRouteArgs{key: $key, provider: $provider}';
  }
}
