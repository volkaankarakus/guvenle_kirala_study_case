import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/constants/color_constants.dart';
import 'package:guvenle_kirala_study_case/widget/selectable_widget.dart';

class FormBigWidget extends StatelessWidget {
  TextEditingController? controller;
  final bool hasError;
  final TextInputType keyboardType;
  final String? labelText;
  final bool? obsecure;
  final Function(String)? onChanged;
  FocusNode? focusNode;
  final int totalTextLimit;
  int enteredTextLetters;

  FormBigWidget({
    Key? key,
    this.controller,
    this.hasError = false,
    this.keyboardType = TextInputType.emailAddress,
    required this.labelText,
    this.obsecure,
    required this.onChanged,
    this.focusNode,
    this.totalTextLimit = 300,
    this.enteredTextLetters = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var regExp = RegExp(r"\w+(\'\w+)?");

    return Stack(
      children: [
        Container(
          height: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(12),
          child: SelectableWidget(
            color: Colors.white,
            hasError: hasError,
            child: TextField(
              controller: controller,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: ColorConstants.kDescriptionTextColor()),
              cursorColor: ColorConstants.kDescriptionTextColor(),
              focusNode: focusNode,
              keyboardType: keyboardType,
              obscureText: obsecure ?? false,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: ColorConstants.kDescriptionTextColor(),
                  overflow: TextOverflow.clip,
                ),
                border: InputBorder.none,
                hintText: labelText,
                alignLabelWithHint: true,
                hintMaxLines: regExp
                    .allMatches(labelText ?? '')
                    .length, // ** the maximum number of lines can be as many as the number of letters in the hintText
              ),
              textAlignVertical: TextAlignVertical.top,
              minLines: null,
              maxLines: null,
              expands: true,
              onChanged: onChanged,
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          right: 30,
          child: Text('$enteredTextLetters / $totalTextLimit ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.black)),
        )
      ],
    );
  }
}
