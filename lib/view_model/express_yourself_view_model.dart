import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/app_defaults.dart';
import 'package:guvenle_kirala_study_case/app/blueprints/base_view_model.dart';

class ExpressYourselfViewModel extends BaseViewModel {
  @override
  void disposeModel() {}

  @override
  Future<void> getData() async {
    await Future.delayed(AppDefaults.kStandartLongDuration);
    _values = RangeValues(_rangeStart, _rangeEnd);
    _labels = RangeLabels(_values.start.toString(), _values.end.toString());
    super.setViewDidLoad(true);
  }

  void popPage() {
    super.appRouter.pop();
  }

  // ** RANGE SLIDER
  final double _rangeStart = 1500;
  double get rangeStart => _rangeStart;

  final double _rangeEnd = 4500;
  double get rangeEnd => _rangeEnd;

  late RangeValues _values;
  RangeValues get values => _values;

  late RangeLabels _labels;
  RangeLabels get labels => _labels;

  void rangeValuesOnChanged(RangeValues newValues) {
    _values = newValues;
    notifyListeners();
  }

  // ** EXPRESS YOURSELF BIGFORMWIDGET
  String _value = '';
  void setValue(String value) {
    _value = value;
    notifyListeners();
  }

  int get enteredLetterLength => _value.length;

  // ** UPDATE DATE
  DateTime _updatedDate = DateTime(2022, 11, 19);
  DateTime? get updatedDate => _updatedDate;
}
