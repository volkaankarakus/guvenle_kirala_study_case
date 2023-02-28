import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/constants/color_constants.dart';
import 'package:guvenle_kirala_study_case/widget/selectable_widget.dart';

class FormWidget extends StatelessWidget {
  final bool hasError;
  final TextInputType keyboardType;
  final String? labelText;
  final bool? obsecure;
  final Widget? prefixIcon;
  final Function(String)? onChanged;
  FocusNode? focusNode;

  FormWidget({
    Key? key,
    this.hasError = false,
    this.keyboardType = TextInputType.emailAddress,
    required this.labelText,
    this.obsecure,
   this.prefixIcon,
    required this.onChanged,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(12),
          child: SelectableWidget(
            color: Colors.white,
            hasError: hasError,
            child: TextField(
              style: TextStyle(
                  color: ColorConstants.kDescriptionTextColor(),
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
              cursorColor: ColorConstants.kDescriptionTextColor(),
              focusNode: focusNode,
              keyboardType: keyboardType,
              obscureText: obsecure ?? false,
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.question_mark_sharp),
                  labelStyle:
                      TextStyle(color: ColorConstants.kDescriptionTextColor()),
                  border: InputBorder.none,
                  labelText: labelText,
                  prefixIcon: prefixIcon,
                  hintStyle: const TextStyle(fontSize: 15)),
              textAlignVertical: TextAlignVertical.top,
              // minLines: null,
              // maxLines: null,
              // expands: true,
              onChanged: onChanged,
            ),
          ),
        )
      ],
    );
  }
}
