import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/app_defaults.dart';
import 'package:guvenle_kirala_study_case/app/constants/duration_constants.dart';
import 'package:guvenle_kirala_study_case/app/router/custom_route_builder.dart';
import 'package:guvenle_kirala_study_case/view/first_page_view.dart';

part 'router.gr.dart';

@CustomAutoRouter(
    durationInMilliseconds: 400,
    transitionsBuilder: CustomRouteBuilderr.slideTransitionBuilder,
    replaceInRouteName: 'Page,Route',
    routes: [
      // ** FIRST PAGE
      CustomRoute<void>(
        durationInMilliseconds: AppDefaults.kStandartTransitionDuration,
        transitionsBuilder: CustomRouteBuilderr.slideTransitionBuilder,
        initial: true,
        page: FirstPageView,
        name: 'firstPageViewRoute',
      ),


    ])
class AppRouter {
  FirstPageView? firstPageView;

}
