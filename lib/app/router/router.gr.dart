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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../view/express_yourself_view.dart' as _i1;
import '../../view/first_page_view.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ExpressYourselfPageViewRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ExpressYourselfView(),
      );
    },
    FirstPageViewRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.FirstPageView(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          ExpressYourselfPageViewRoute.name,
          path: '/kirac-profili-kendinifade-et',
        ),
        _i3.RouteConfig(
          FirstPageViewRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.ExpressYourselfView]
class ExpressYourselfPageViewRoute extends _i3.PageRouteInfo<void> {
  const ExpressYourselfPageViewRoute()
      : super(
          ExpressYourselfPageViewRoute.name,
          path: '/kirac-profili-kendinifade-et',
        );

  static const String name = 'ExpressYourselfPageViewRoute';
}

/// generated route for
/// [_i2.FirstPageView]
class FirstPageViewRoute extends _i3.PageRouteInfo<void> {
  const FirstPageViewRoute()
      : super(
          FirstPageViewRoute.name,
          path: '/',
        );

  static const String name = 'FirstPageViewRoute';
}
