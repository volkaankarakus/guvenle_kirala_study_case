import 'package:flutter/material.dart';

class ColorConstants extends Color {
  ColorConstants.kNavigationBarBackgroundColor() : super(0xFF17203A);
  ColorConstants.kSideBarBackgroundColor() : super(0xFF17203A);
  ColorConstants.kBackgroundColor() : super.fromRGBO(0, 106, 255, 1);
  ColorConstants.kIconColor() : super.fromRGBO(72, 72, 72, 1);
  ColorConstants.kHeadlineTextColor() : super.fromRGBO(58, 51, 53, 1);
  ColorConstants.kDescriptionTextColor() : super.fromRGBO(144, 142, 142, 1);
  ColorConstants.kElevatedButtonBorderColor()
      : super.fromRGBO(112, 112, 112, 0.2);
  ColorConstants.kSelectedElevatedButtonColor()
      : super.fromRGBO(191, 218, 255, 1);
}
