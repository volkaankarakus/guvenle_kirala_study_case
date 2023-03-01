import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:guvenle_kirala_study_case/view/education_statue_view.dart';

import '../../view/express_yourself_view.dart';
import '../../view/first_page_view.dart';
import '../app_defaults.dart';
import 'custom_route_builder.dart';

@CustomAutoRouter(
  transitionsBuilder: CustomRouteBuilderr.slideTransitionBuilder,
  durationInMilliseconds: AppDefaults.kStandartTransitionDuration,
  routes: [
    MaterialRoute(
        initial: false,
        page: ExpressYourselfView,
        name: 'expressYourselfPageViewRoute'),
    MaterialRoute(
      initial: true,
      page: FirstPageView,
      name: 'firstPageViewRoute',
    ),
    MaterialRoute(
      initial: true,
      page: EducationStatueView,
      name: 'educationStatueViewRoute',
    ),
  ],
)
class $AppRouter {}
