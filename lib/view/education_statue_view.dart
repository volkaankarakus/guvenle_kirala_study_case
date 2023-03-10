import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/constants/color_constants.dart';
import 'package:guvenle_kirala_study_case/model/custom_elevated_button_model.dart';
import 'package:guvenle_kirala_study_case/view_model/express_yourself_view_model.dart';
import 'package:guvenle_kirala_study_case/widget/description_text_widget.dart';
import 'package:guvenle_kirala_study_case/widget/dynamic_sized_box_widget.dart';
import 'package:guvenle_kirala_study_case/widget/headline_text_widget.dart';
import 'package:provider/provider.dart';

class EducationStatueView extends StatelessWidget {
  final ExpressYourselfViewModel provider;
  const EducationStatueView({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: provider,
      builder: (context, _) {
        return Stack(
          children: [
            Positioned.fill(
                top: 0,
                right: 0,
                child: Container(
                  color: ColorConstants.kBackgroundColor(),
                )),
            Positioned.fill(
              top: 50,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 12.5,
              child: IconButton(
                onPressed: () {
                  context.read<ExpressYourselfViewModel>().popPage();
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            const Positioned(
              top: 120,
              left: 100,
              child: HeadlineTextWidget(headlineText: 'Eğitim Durumunuz'),
            ),
            const Positioned(
              top: 160,
              left: 70,
              child: DescriptionTextWidget(
                  headlineText: 'Eğitim durumunuzu seçiniz..'),
            ),
            Positioned.fill(
                top: 150,
                left: 15,
                child: ListView.separated(
                  itemCount: context
                      .watch<ExpressYourselfViewModel>()
                      .educationStatueList
                      .length,
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemBuilder: (context, index) {
                    final item = context
                        .read<ExpressYourselfViewModel>()
                        .educationStatueList[index];
                    return _EducationStatueItemWidget(
                      onTap: () => context
                          .read<ExpressYourselfViewModel>()
                          .setEducationStatue(model: item),
                      model: item,
                    );
                  },
                )),
          ],
        );
      },
    );
  }
}

class _EducationStatueItemWidget extends StatelessWidget {
  final CustomElevatedButtonModel model;
  void Function()? onTap;

  _EducationStatueItemWidget({required this.model, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DynamicSizedBox(size: 3),
          DescriptionTextWidget(headlineText: model.textString),
          const DynamicSizedBox(size: 5),
          const Divider(
            indent: 12,
            endIndent: 25,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
