import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/widget/dynamic_sized_box_widget.dart';

class CustomElevatedButton extends StatelessWidget {
  final double width;
  final void Function()? onPressed;
  Color backgroundColor;
  final Color borderColor;
  final String textString;
  final Color textColor;
  bool isSelected;

  CustomElevatedButton({
    super.key,
    required this.width,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    required this.borderColor,
    required this.textString,
    required this.textColor,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: width,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(backgroundColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: borderColor),
                  ),
                ),
              ),
              child: Text(
                textString,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              ),
            ),
          ),
          const DynamicSizedBox(
            size: 12,
          ),
        ],
      ),
    );
  }
}
