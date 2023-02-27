import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/app_configs.dart';
import '../../service/logger_service.dart';
import '../locator/locator.dart';

abstract class BaseViewModel extends ChangeNotifier {
  //This can be used as a init loading status
  //Upon showing the view the loading indicator is shown until the api request is complete
  //After that this can be set to false and the view is shown

  @protected
  bool _viewLoaded = false;
  bool get viewLoaded => _viewLoaded;

  bool _loading = false;
  bool get loading => _loading;

  //**  Context Getter
  BuildContext get context => AppConfigs.context!;

  //** Router Service
  @protected
  final appRouter = AppConfigs.appRouter;

  //** Logger Service
  @protected
  final loggerService = locator<LoggerService>();

  //This can be used to set the viewLoading status
  @protected
  void setViewDidLoad(bool value) {
    if (value != _viewLoaded) {
      _viewLoaded = value;
      notifyListeners();
    }
  }

  void changeViewDidLoad() {
    _viewLoaded = !_viewLoaded;
    notifyListeners();
  }

  //This can be used to set the loading status
  @protected
  void setLoading(bool value) {
    if (value != _loading) {
      _loading = value;
      notifyListeners();
    }
  }

  /// This can be used to fetch ApiResponseModel
  @protected
  Future<void> getData();

  /// This can be used to dispose
  @protected
  void disposeModel();
}
