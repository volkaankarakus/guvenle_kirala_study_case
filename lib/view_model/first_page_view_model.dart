import 'package:guvenle_kirala_study_case/app/app_defaults.dart';
import 'package:guvenle_kirala_study_case/app/blueprints/base_view_model.dart';
import 'package:guvenle_kirala_study_case/app/router/router.gr.dart';

class FirstPageViewModel extends BaseViewModel {
  @override
  void disposeModel() {}

  @override
  Future<void> getData() async {
    await Future.delayed(AppDefaults.kStandartDuration);
    super.setViewDidLoad(true);
  }

  Future<void> navigateToExpressYourself() async {
    // EasyLoading.show(
    //     maskType: EasyLoadingMaskType.clear,
    //     indicator: Lottie.asset('lib/assets/lottie/lottie_loading_house.json',
    //         height: 100, reverse: true, fit: BoxFit.fitHeight));
    // await Future.delayed(const Duration(seconds: 2));
    // EasyLoading.dismiss();
    await super.appRouter.push(const ExpressYourselfPageViewRoute());
  }
}
