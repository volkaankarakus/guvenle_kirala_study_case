import 'package:flutter/material.dart';

abstract class FieldColors {
  static Color whiteBg = Colors.white;
  static const cpBg = Color.fromARGB(255, 1, 2, 10);
  static const cpYellow = Color(0xfff8d323);
  static const inputBorderBgLight = Color.fromARGB(255, 237, 240, 255);
  static const inputBorderBgDark = Color.fromARGB(255, 28, 31, 44);

  static const Color defTextColor = Color(0xFFFFFFFF);
  static const Color defDisabledColor = Color(0xFF5F6574);

  static const Color captionColor = Color(0xFF6F7A8F),
      body1Color = captionColor;
  static const Color _headlineColor = Color(0xFFFFFFFF),
      headline1Color = _headlineColor,
      headline2Color = _headlineColor,
      headline3Color = _headlineColor,
      headline4Color = _headlineColor,
      headline5Color = _headlineColor,
      headline6Color = _headlineColor;

  static const Color switchTrackColor = Color(0xFF30374F),
      switchActiveColor = Color(0xFF1A84E6);

  static const Color _bgGC1 = Color(0xFF2B2E3C), bgGC2 = Color(0xFF1C1E27);
  static const Gradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [_bgGC1, bgGC2],
  );

  static const _btn1GC1 = Color(0xFF2359E3), _btn1GC2 = Color(0xFF12A8E8);
  static const button1Gradient = LinearGradient(
    begin: AlignmentDirectional.centerStart,
    end: AlignmentDirectional.centerEnd,
    colors: [_btn1GC1, _btn1GC2],
  );

  static const button1Color = Color(0xFF009FE3);
  static const button2Color = Color(0xFF333846);

  static const appbarColor = Color(0xFF333846);

  static const _btmbarGC1 = Color(0xFF363942), _btmbarGC2 = Color(0xFF5F6574);
  static const bottomBarGradient = LinearGradient(
    begin: AlignmentDirectional.centerStart,
    end: AlignmentDirectional.centerEnd,
    colors: [_btmbarGC1, _btmbarGC2],
  );

  static const authTopPartColor1 = Color(0xFF5A606F);
  static const dialogBgColor = Color(0xFF333846);
  static const resultTileColor = Color(0xFF333846);
  static const resultTileTrophybgColor = Color(0xFF5A606F);
  static const resultTileWinnerTrophyColor = Color(0xFFFF7A1B);
  static const resultTileUnWinnerTrophyColor = Color(0xFF009FE3);
  static const padGroupTitleColor = Color(0xFF323644);

  static const bottomBarColor = Color(0xFF535866);
  static const bottomBarDisabledColor = Color(0xFF777c88);

  static const Color textFieldFill = Color(0xFF12141B);
  static const Color defBgColor = Color(0xFF12141B);
  static const Color gameScoreBorderColor = Color(0xFF141528);
  static const Color chipSelectedColor = Color(0xFF1A84E6),
      chipUnselectedColor = Color(0xFF5F6574);
  static Color chipDisabledSelectedColor = chipSelectedColor.withOpacity(0.5),
      chipDisabledUnselectedColor = chipUnselectedColor.withOpacity(0.5);
}
