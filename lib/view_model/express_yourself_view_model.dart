import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/app_defaults.dart';
import 'package:guvenle_kirala_study_case/app/blueprints/base_view_model.dart';
import 'package:guvenle_kirala_study_case/app/router/router.gr.dart';
import 'package:guvenle_kirala_study_case/model/custom_elevated_button_model.dart';
import 'package:guvenle_kirala_study_case/model/profile_model.dart';

class ExpressYourselfViewModel extends BaseViewModel {
  @override
  void disposeModel() {
    super.dispose();
  }

  @override
  Future<void> getData() async {
    await Future.delayed(AppDefaults.kStandartLongDuration);
    _values = RangeValues(_rangeStart, _rangeEnd);
    _labels = RangeLabels(_values.start.toString(), _values.end.toString());
    super.setViewDidLoad(true);
  }

  // ** Pop Page
  void popPage() {
    super.appRouter.pop();
  }

// ** Gender List
  List<CustomElevatedButtonModel> genderList = <CustomElevatedButtonModel>[
    CustomElevatedButtonModel(textString: 'Kadın'),
    CustomElevatedButtonModel(textString: 'Erkek'),
    CustomElevatedButtonModel(textString: 'Diğer'),
  ];

  // ** Have Pet Friend List
  List<CustomElevatedButtonModel> anyPetFriendList =
      <CustomElevatedButtonModel>[
    CustomElevatedButtonModel(textString: 'Evet'),
    CustomElevatedButtonModel(textString: 'Hayır'),
  ];

  // ** Pet Selection Answer Getter
  bool get isPetSelectionAnswerYes => anyPetFriendList
              .firstWhere((element) => element.textString == 'Evet')
              .isSelected ==
          true
      ? true
      : false;

  // ** Number Of Pet Friend List
  List<CustomElevatedButtonModel> numberOfPetFriendList =
      <CustomElevatedButtonModel>[
    CustomElevatedButtonModel(textString: '1'),
    CustomElevatedButtonModel(textString: '2'),
    CustomElevatedButtonModel(textString: '3+'),
  ];

  // ** Education Statue List
  List<CustomElevatedButtonModel> educationStatueList =
      <CustomElevatedButtonModel>[
    CustomElevatedButtonModel(textString: 'Doktora'),
    CustomElevatedButtonModel(textString: 'İlkokul'),
    CustomElevatedButtonModel(textString: 'Lise'),
    CustomElevatedButtonModel(textString: 'Üniversite'),
  ];

  // ** Have Extra Income List
  List<CustomElevatedButtonModel> extraIncomeYesNoList =
      <CustomElevatedButtonModel>[
    CustomElevatedButtonModel(textString: 'Evet'),
    CustomElevatedButtonModel(textString: 'Hayır'),
  ];

  // ** Extra Income Selection Answer Getter
  bool get isExtraIncomeAnswerYes => extraIncomeYesNoList
              .firstWhere((element) => element.textString == 'Evet')
              .isSelected ==
          true
      ? true
      : false;

  // ** onTap To Select
  void tapToSelect(
      {required List<CustomElevatedButtonModel> modelList,
      required CustomElevatedButtonModel model}) {
    int modelIndex = modelList
        .indexWhere((element) => element.textString == model.textString);
    modelList[modelIndex] = model.copyWith(isSelected: true);

    for (var i = 0; i < modelList.length; i++) {
      modelList[i] =
          modelList[i].copyWith(isSelected: (i == modelIndex) ? true : false);
    }
    notifyListeners();
  }

  // ** Submit Data to Model
  ProfileModel profileModel = ProfileModel();
  void submitDataToModel() {
    profileModel
      ..gender = genderList
          .firstWhere((element) => element.isSelected == true,
              orElse: () => CustomElevatedButtonModel(textString: ''))
          .textString
      ..isHavePetFriends = anyPetFriendList
                  .firstWhere((element) => element.isSelected == true,
                      orElse: () => CustomElevatedButtonModel(textString: ''))
                  .textString ==
              'Evet'
          ? true
          : false
      ..numberOfPetFriends = numberOfPetFriendList
          .firstWhere((element) => element.isSelected == true,
              orElse: () => CustomElevatedButtonModel(textString: ''))
          .textString
      ..educationStatus = educationStatueList
          .firstWhere((element) => element.isSelected == true,
              orElse: () => CustomElevatedButtonModel(textString: ''))
          .textString
      ..isHaveExtraIncome = extraIncomeYesNoList
                  .firstWhere((element) => element.isSelected == true,
                      orElse: () => CustomElevatedButtonModel(textString: ''))
                  .textString ==
              'Evet'
          ? true
          : false
      ..desiredMinRentAmount = _values.start.toStringAsFixed(0)
      ..desiredMaxRentAmount = _values.end.toStringAsFixed(0);

    popPage();
  }

  // ** Range Slider
  final double _rangeStart = 30000;
  double get rangeStart => _rangeStart;

  final double _rangeEnd = 80000;
  double get rangeEnd => _rangeEnd;

  late RangeValues _values;
  RangeValues get values => _values;

  late RangeLabels _labels;
  RangeLabels get labels => _labels;

  void rangeValuesOnChanged(RangeValues newValues) {
    _values = newValues;
    notifyListeners();
  }

  // ** Big Form Widget
  String _value = '';
  void setValue(String value) {
    _value = value;
    profileModel.expressYourselfText = value;
    notifyListeners();
  }

  int get enteredLetterLength => _value.length;

  // ** Update Date
  final DateTime _updatedDate = DateTime(2022, 11, 19);
  DateTime? get updatedDate => _updatedDate;

  // ** Monthly Salary Setter
  void setNetMonthlySalary({required String monthlySalary}) {
    profileModel.netMonthlySalary = monthlySalary;
    notifyListeners();
  }

  // ** Current Rent Amount Setter
  void setCurrentRentAmount({required String rentAmount}) {
    profileModel.currentRentAmount = rentAmount;
    notifyListeners();
  }

  // ** Education Statue Setter
  void setEducationStatue({required CustomElevatedButtonModel model}) async {
    profileModel.educationStatus = model.textString;
    Future.delayed(const Duration(seconds: 1));
    popPage();
    notifyListeners();
  }

  // ** Navigate to EducationStatuePage
  Future<void> navigateToEducationStatuePage() async {
    await super.appRouter.push(EducationStatueViewRoute(provider: this));
  }

  // // ** Platform File
  // List<PlatformFile> files = [];

  // // ** OPEN FILE
  // Future<void> openFiles() async {
  //   FilePickerResult? resultFile = await FilePicker.platform.pickFiles(
  //     allowMultiple: true,
  //     type: FileType.custom,
  //     allowedExtensions: ['jpg', 'pdf', 'doc'],
  //   );
  //   if (resultFile == null) {
  //     return;
  //   }
  //   files = resultFile.files;
  //   notifyListeners();
  // }

  // // ** FILE SIZE
  // String? showFileSize(PlatformFile file) {
  //   double kb = file.size / 1024;
  //   double mb = kb / 1024;
  //   String size = (mb >= 1)
  //       ? '${mb.toStringAsFixed(2)} MB'
  //       : '${kb.toStringAsFixed(2)} KB';

  //   return size;
  // }
}
