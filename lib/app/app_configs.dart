import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/router/router.dart';

@immutable
class AppConfigs {
  static final _appRouter = $AppRouter();
  static $AppRouter get appRouter => _appRouter;

  static BuildContext? get context => _appRouter.navigatorKey.currentContext;

  static GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
}
