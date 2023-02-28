import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guvenle_kirala_study_case/app/app_defaults.dart';
import 'package:guvenle_kirala_study_case/app/constants/color_constants.dart';

final ThemeData lightTheme = ThemeData(
  fontFamily: GoogleFonts.montserrat().fontFamily,
  primaryTextTheme: GoogleFonts.montserratTextTheme(),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    toolbarTextStyle: TextStyle(color: Colors.black),
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: const Color(0xff3c20da),
    actionTextColor: const Color(0xffd8d3f8),
    disabledActionTextColor: const Color(0x66c8c8c8),
    contentTextStyle: const TextStyle(color: Color(0xfffafafa), fontSize: 14),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDefaults.kStandartBorderRadius)),
    behavior: SnackBarBehavior.floating,
    elevation: 3,
  ),
  brightness: Brightness.light,
  primaryColor: const Color(0xff3c20da),
  primaryColorLight: const Color(0xffd8d3f8),
  primaryColorDark: const Color(0xff251485),
  canvasColor: const Color(0xfffafafa),
  scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
  cardColor: const Color(0xfffafafa),
  dividerColor: const Color(0x1f000000),
  highlightColor: const Color(0x66bcbcbc),
  splashColor: const Color(0x66c8c8c8),
  unselectedWidgetColor: const Color(0x8a000000),
  disabledColor: const Color(0x61000000),
  secondaryHeaderColor: const Color(0xfff29e0e),
  textSelectionTheme: const TextSelectionThemeData(
    selectionColor: Color(0xff4285f4),
    cursorColor: Color(0xff4285f4),
    selectionHandleColor: Color(0xff8b7aeb),
  ),
  dialogBackgroundColor: const Color(0xffffffff),
  indicatorColor: const Color(0xff3d21de),
  hintColor: const Color(0x8a000000),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 36,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius:
          BorderRadius.all(Radius.circular(AppDefaults.kStandartBorderRadius)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xffe0e0e0),
    disabledColor: Color(0x61000000),
    highlightColor: Color(0x29000000),
    splashColor: Color(0x1f000000),
    focusColor: Color(0x1f000000),
    hoverColor: Color(0x0a000000),
    colorScheme: ColorScheme(
      primary: Color(0xff3c20da),
      primaryContainer: Color(0xff251485),
      secondary: Color(0xff3d21de),
      secondaryContainer: Color(0xff251485),
      surface: Color(0xffffffff),
      background: Color(0xffb1a6f2),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xffffffff),
      onSurface: Color(0xff000000),
      onBackground: Color(0xffffffff),
      onError: Color(0xffffffff),
      brightness: Brightness.light,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xff3c20da),
    selectedItemColor: Color(0xffffffff),
    unselectedItemColor: Color(0xffb1a6f2),
    selectedLabelStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    unselectedLabelStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  ),
  textTheme: TextTheme(
    displayLarge: const TextStyle(
      color: Color(0xFFB53D96),
      fontSize: 96,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: const TextStyle(
      color: Color(0xff3d21de),
      fontSize: 60,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: const TextStyle(
      color: Color(0xFFB53D96),
      fontSize: 48,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: const TextStyle(
      color: Color(0xFF24b70b),
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: const TextStyle(
      color: Color(0xFFA84448),
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: const TextStyle(
      color: Color(0xffffffff),
      fontSize: 20,
      fontWeight: FontWeight.w300,
    ),
    bodyLarge: const TextStyle(
      color: Color(0xFF464545),
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: ColorConstants.kDescriptionTextColor(),
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: const TextStyle(
      color: Color(0xff3d21de),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    labelLarge: const TextStyle(
      color: Color(0xff3d21de),
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      color: ColorConstants.kHeadlineTextColor(),
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: ColorConstants.kHeadlineTextColor(),
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: const TextStyle(
      color: Color(0xff3d21de),
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.never,
    contentPadding: const EdgeInsets.all(AppDefaults.kStandartContentPadding),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDefaults.kStandartBorderRadius),
      borderSide: const BorderSide(
        color: Color(0xFF495355),
        width: 0.3,
        style: BorderStyle.none,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDefaults.kStandartBorderRadius),
      borderSide: const BorderSide(
        color: Color(0xFFa52222),
        width: 1,
        style: BorderStyle.none,
      ),
    ),
    labelStyle: const TextStyle(
      color: Color(0xFF212022),
      fontSize: 16,
    ),
    hintStyle: const TextStyle(
      color: Color(0xFF495355),
      fontSize: 16,
      fontWeight: FontWeight.w300,
    ),
    errorStyle: const TextStyle(
      fontSize: 0,
      letterSpacing: 0,
      wordSpacing: 0,
      height: 0,
    ),
    counterStyle: const TextStyle(
      fontSize: 0,
      letterSpacing: 0,
      wordSpacing: 0,
      height: 0,
    ),
    errorMaxLines: 0,
    isDense: false,
    isCollapsed: false,
    prefixStyle: const TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: const TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: false,
    fillColor: const Color(0x00000000),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedErrorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    disabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    border: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
  ),
  iconTheme: IconThemeData(
    color: ColorConstants.kIconColor(),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  sliderTheme: const SliderThemeData(
    activeTrackColor: null,
    inactiveTrackColor: null,
    disabledActiveTrackColor: null,
    disabledInactiveTrackColor: null,
    activeTickMarkColor: null,
    inactiveTickMarkColor: null,
    disabledActiveTickMarkColor: null,
    disabledInactiveTickMarkColor: null,
    thumbColor: null,
    disabledThumbColor: null,
    thumbShape: null,
    overlayColor: null,
    valueIndicatorColor: null,
    valueIndicatorShape: null,
    showValueIndicator: null,
    valueIndicatorTextStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFF3c20da),
    foregroundColor: Color(0xffffffff),
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color(0xffffffff),
    unselectedLabelColor: Color(0xb2ffffff),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0x1f000000),
    brightness: Brightness.light,
    deleteIconColor: Color(0xde000000),
    disabledColor: Color(0x0c000000),
    labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
    labelStyle: TextStyle(
      color: Color(0xde000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
    secondaryLabelStyle: TextStyle(
      color: Color(0x3d000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color(0x3d3c20da),
    selectedColor: Color(0x3d000000),
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(0.0)),
  )),
  checkboxTheme: CheckboxThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff311ab2);
      }
      return null;
    }),
  ),
  radioTheme: RadioThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff311ab2);
      }
      return null;
    }),
  ),
  switchTheme: SwitchThemeData(
    thumbColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff311ab2);
      }
      return null;
    }),
    trackColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return null;
      }
      if (states.contains(MaterialState.selected)) {
        return const Color(0xff311ab2);
      }
      return null;
    }),
  ),
  bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xffffffff)),
  colorScheme: const ColorScheme.light(
    primary: Color.fromARGB(255, 47, 28, 153),
    primaryContainer: Color.fromARGB(255, 27, 18, 81),
    secondary: Color.fromARGB(255, 44, 33, 106),
    secondaryContainer: Color.fromARGB(255, 59, 32, 207),
  )
      .copyWith(
          primary: const MaterialColor(4282130650, {
            50: Color(0xffece9fc),
            100: Color(0xffd8d3f8),
            200: Color(0xffb1a6f2),
            300: Color(0xff8b7aeb),
            400: Color(0xff644de5),
            500: Color(0xff3d21de),
            600: Color(0xff311ab2),
            700: Color(0xff251485),
            800: Color(0xff180d59),
            900: Color(0xff0c072c)
          }),
          background: const Color(0xffb1a6f2))
      .copyWith(error: const Color(0xffd32f2f)),
);
