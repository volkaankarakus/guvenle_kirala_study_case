import 'dart:ui';

import 'package:flutter/material.dart';

abstract class WidgetReturner {
  static ElevatedButton wrapElevatedButton({
    required Widget child,
    required VoidCallback? onPressed,
    bool withIcon = false,
  }) {
    if (withIcon) {
      return ElevatedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.add),
        label: child,
      );
    }
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }

  static Widget wrapClipRRect({
    required Widget child,
    bool enabled = true,
  }) {
    if (enabled) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: child,
      );
    }
    return child;
  }

  static Widget wrapBlur({
    required Widget child,
    double x = 10,
    double y = 10,
    bool enabled = true,
  }) {
    if (enabled) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: x, sigmaY: y),
        child: child,
      );
    }
    return child;
  }

  static Widget expanderRow({
    required Widget child,
    bool enabled = true,
  }) {
    if (enabled) {
      return Row(
        children: [
          Expanded(child: child),
        ],
      );
    }
    return child;
  }

  static Widget expanderColumn({
    required Widget child,
    bool enabled = true,
  }) {
    if (enabled) {
      return Column(
        children: [
          Expanded(child: child),
        ],
      );
    }
    return child;
  }

  static Widget wrapPadding({
    required Widget child,
    double gap = 10,
    bool enabled = true,
  }) {
    if (enabled && child is Text) {
      return Padding(
        padding: EdgeInsets.only(bottom: gap),
        child: child,
      );
    }
    return child;
  }
}
