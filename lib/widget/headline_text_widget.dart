import 'package:flutter/material.dart';

class HeadlineTextWidget extends StatelessWidget {
  final String headlineText;
  const HeadlineTextWidget({super.key, required this.headlineText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Text(
        headlineText,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
