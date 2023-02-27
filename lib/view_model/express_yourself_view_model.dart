import 'package:guvenle_kirala_study_case/app/app_defaults.dart';
import 'package:guvenle_kirala_study_case/app/blueprints/base_view_model.dart';

class ExpressYourselfViewModel extends BaseViewModel {
  @override
  void disposeModel() {}

  @override
  Future<void> getData() async {
    await Future.delayed(AppDefaults.kStandartLongDuration);
    super.setViewDidLoad(true);
  }

  void popPage() {
    super.appRouter.pop();
  }
}
