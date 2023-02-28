class CustomElevatedButtonModel {
  final String textString;
  bool isSelected;
  CustomElevatedButtonModel({
    required this.textString,
    this.isSelected = false,
  });
}

List<CustomElevatedButtonModel> elevatedButtons = <CustomElevatedButtonModel>[
  CustomElevatedButtonModel(textString: 'Kadın'),
  CustomElevatedButtonModel(textString: 'Erkek'),
  CustomElevatedButtonModel(textString: 'Diğer'),
];

List<CustomElevatedButtonModel> elevatedButtonsYesNo =
    <CustomElevatedButtonModel>[
  CustomElevatedButtonModel(textString: 'Evet'),
  CustomElevatedButtonModel(textString: 'Hayır'),
];

List<CustomElevatedButtonModel> numberOfPetFriends =
    <CustomElevatedButtonModel>[
  CustomElevatedButtonModel(textString: '1'),
  CustomElevatedButtonModel(textString: '2'),
  CustomElevatedButtonModel(textString: '3+'),
];
