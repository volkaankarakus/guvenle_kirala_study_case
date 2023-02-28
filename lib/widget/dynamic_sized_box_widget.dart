import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/app_defaults.dart';

import '../app/constants/padding_constants.dart';

class DynamicSizedBox extends StatelessWidget {
  final double size;
  final bool lowPadding;
  final Axis axis;
  const DynamicSizedBox({
    Key? key,
    this.axis = Axis.vertical,
    this.size = AppDefaults.kStandartWidgetSpacing,
    this.lowPadding = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (axis == Axis.horizontal) {
      return SizedBox(
        width: lowPadding
            ? double.parse(
                const PaddingConstants.kStandartWidgetSpacing().toString())
            : size,
      );
    }
    return SizedBox(
      height: lowPadding
          ? double.parse(
              const PaddingConstants.kStandartWidgetSpacing().toString())
          : size,
    );
  }
}
