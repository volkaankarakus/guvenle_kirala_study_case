import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/constants/color_constants.dart';

class DescriptionTextWidget extends StatelessWidget {
  final String headlineText;
  const DescriptionTextWidget({
    super.key,
    required this.headlineText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Text(
        headlineText,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: ColorConstants.kDescriptionTextColor(), fontSize: 18),
      ),
    );
  }
}
