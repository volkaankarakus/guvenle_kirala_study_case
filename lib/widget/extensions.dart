import 'dart:math' as math;

import 'package:flutter/material.dart';

extension CalcContrast on Color {
  double contrastWithColor(Color other) {
    final thisBrightness = computeLuminance();
    final otherBrightness = other.computeLuminance();

    final brightest = math.max(thisBrightness, otherBrightness);
    final darkest = math.min(thisBrightness, otherBrightness);

    return (brightest + 0.05) / (darkest + 0.05);
  }

  bool hasGoodContrastWithColor(Color other) {
    return contrastWithColor(other) > 4.5;
  }

  Color get contrastingColor {
    if (hasGoodContrastWithColor(this)) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}

extension IntlReturner on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get pixelRatio => MediaQuery.of(this).devicePixelRatio;
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
  double get aspectRatio => MediaQuery.of(this).size.aspectRatio;
  String get locale => Localizations.localeOf(this).languageCode;
  String get country => Localizations.localeOf(this).countryCode ?? '';
  String get localeCountry => '$locale-$country';
}
