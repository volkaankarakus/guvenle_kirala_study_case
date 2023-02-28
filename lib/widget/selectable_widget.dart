import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/app_defaults.dart';
import 'package:guvenle_kirala_study_case/utils/reset_focus.dart';
import 'package:guvenle_kirala_study_case/widget/box_container.dart';


class SelectableWidget extends StatelessWidget {
  final Widget? child;
  final bool enabled;
  final Function? onTap;
  final Color? color;
  final bool hasError;
  final double? width;
  final double? height;
  final bool enablePadding;
  final bool showCount;
  final String? count;
  final EdgeInsetsGeometry? padding;

  const SelectableWidget({
    Key? key,
    required this.child,
    this.enabled = true,
    this.onTap,
    this.color,
    this.hasError = false,
    this.width,
    this.height,
    this.enablePadding = true,
    this.showCount = false,
    this.count,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
      borderRadius: BorderRadius.circular(AppDefaults.kStandartBlurRadius),
      onTap: enabled
          ? () {
              ResetFocus().initFocus();
              if (onTap != null) {
                onTap!();
              }
            }
          : null,
      child: BoxContainer(
        padding: padding,
        enablePadding: enablePadding,
        width: width,
        height: height,
        color: color,
        hasError: hasError,
        showCount: showCount,
        count: count,
        child: child,
      ),
    );
  }
}
