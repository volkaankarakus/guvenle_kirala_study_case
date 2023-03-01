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
  bool isCurrencyText;

  FormWidget(
      {Key? key,
      this.hasError = false,
      this.keyboardType = TextInputType.emailAddress,
      required this.labelText,
      this.obsecure,
      this.prefixIcon,
      required this.onChanged,
      this.focusNode,
      this.isCurrencyText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.89,
        child: Container(
          // height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: ColorConstants.kDescriptionTextColor(),
            ),
          ),
          padding: const EdgeInsets.all(4),
          child: SelectableWidget(
            showShadow: false,
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
                  suffixIcon: !isCurrencyText
                      ? const Icon(Icons.question_mark_sharp)
                      : const Padding(
                          padding: EdgeInsets.only(top: 12, left: 10),
                          child: Text('TL')),
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
        ),
      ),
    );
  }
}
