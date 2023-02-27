// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class $AppRouter extends RootStackRouter {
  $AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    FirstPageViewRoute.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const FirstPageView(),
        transitionsBuilder: CustomRouteBuilderr.slideTransitionBuilder,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          FirstPageViewRoute.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [FirstPageView]
class FirstPageViewRoute extends PageRouteInfo<void> {
  const FirstPageViewRoute()
      : super(
          FirstPageViewRoute.name,
          path: '/',
        );

  static const String name = 'FirstPageViewRoute';
}
