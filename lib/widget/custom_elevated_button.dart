import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/theme/theme_light.dart';
import 'package:guvenle_kirala_study_case/widget/widget_wrapper.dart';

class CustomElevatedButton extends StatefulWidget {
  final bool isOutlined;
  final bool isRounded;
  final bool isBlurred;
  final bool withIcon;
  final bool iconColumn;
  final IconData? iconData;
  final bool isExpanded;
  final double blurValue;
  final Function()? onPressed;
  final Color bgColor;
  final Color? blurColor;
  final double? blurColorOpacity;
  final Widget child;
  const CustomElevatedButton(
      {this.isOutlined = false,
      this.isRounded = false,
      this.isBlurred = false,
      this.withIcon = false,
      this.iconColumn = false,
      this.isExpanded = false,
      this.blurValue = 3,
      this.onPressed,
      this.bgColor = Colors.blue,
      Color? blurColor,
      double? blurColorOpacity,
      IconData? iconData,
      required this.child,
      super.key})
      : assert(
            !(isBlurred == false &&
                (blurColor != null || blurColorOpacity != null)),
            'isBlurred must be true if you are providing blurColor or blurColorOpacity'),
        assert(!(withIcon == false && iconData != null),
            'withIcon must be true if you are providing iconData'),
        iconData = iconData ?? Icons.add,
        blurColor = blurColor ?? Colors.black26,
        blurColorOpacity = blurColorOpacity ?? 0.75;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  get isOutlined => widget.isOutlined;
  get isRounded => widget.isRounded;
  get isBlurred => widget.isBlurred;
  get withIcon => widget.withIcon;
  get iconColumn => widget.iconColumn;
  get iconData => widget.iconData;
  get isExpanded => widget.isExpanded;
  get blurValue => widget.blurValue;
  get onPressed => widget.onPressed;
  get bgColor => widget.bgColor;
  get blurColor => widget.blurColor;
  get blurColorOpacity => widget.blurColorOpacity;
  get child => widget.child;

  @override
  Widget build(BuildContext context) {
    return WidgetReturner.expanderRow(
      enabled: isExpanded,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        clipBehavior: Clip.antiAlias,
        style: ElevatedButton.styleFrom(
            textStyle: lightTheme.textTheme.labelLarge!.copyWith(
                color: (isBlurred
                    ? blurColor?.withOpacity(blurColorOpacity!)
                    : isOutlined
                        ? lightTheme.scaffoldBackgroundColor
                        : bgColor)!),
            elevation: isBlurred ? 0 : 2,
            foregroundColor: Colors.transparent,
            shadowColor: Colors.transparent.withOpacity(1),
            surfaceTintColor: Colors.transparent.withOpacity(1),
            shape: isRounded
                ? RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14))
                : RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
            side: isOutlined
                ? const BorderSide(color: Colors.blue, width: 2.5)
                : null,
            backgroundColor:
                isBlurred ? blurColor?.withOpacity(blurColorOpacity!) : bgColor,
            disabledBackgroundColor: isBlurred
                ? blurColor?.withOpacity(blurColorOpacity!)
                : bgColor),
        icon: const SizedBox.shrink(),
        label: WidgetReturner.wrapBlur(
          enabled: isBlurred,
          x: blurValue,
          y: blurValue,
          child: ElevatedButtonWithIconChildColumn(
              label:
                  WidgetReturner.wrapPadding(child: child, enabled: !withIcon),
              icon: withIcon
                  ? Icon(
                      iconData,
                      color: Colors.white,
                    )
                  : const SizedBox.shrink()),
        ),
      ),
    );
  }
}

class ElevatedButtonWithIconChildColumn extends StatelessWidget {
  const ElevatedButtonWithIconChildColumn(
      {super.key,
      required this.label,
      required this.icon,
      this.isIconAtColumn = false});

  final Widget label;
  final Widget icon;
  final bool isIconAtColumn;

  @override
  Widget build(BuildContext context) {
    if (isIconAtColumn) {
      return label;
    }
    final double scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(height: gap / 2),
        SizedBox(height: gap / 2),
        icon,
        SizedBox(height: gap),
        Flexible(child: label),
        SizedBox(height: gap / 2)
      ],
    );
  }
}
