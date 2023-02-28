import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/blueprints/base_view.dart';
import 'package:guvenle_kirala_study_case/app/constants/color_constants.dart';
import 'package:guvenle_kirala_study_case/model/custom_elevated_button_model.dart';
import 'package:guvenle_kirala_study_case/view_model/express_yourself_view_model.dart';
import 'package:guvenle_kirala_study_case/widget/custom_elevated_button.dart';
import 'package:guvenle_kirala_study_case/widget/dynamic_sized_box_widget.dart';
import 'package:guvenle_kirala_study_case/widget/form_widget.dart';
import 'package:guvenle_kirala_study_case/widget/headline_text_widget.dart';
import 'package:provider/provider.dart';

class ExpressYourselfView extends StatelessWidget {
  const ExpressYourselfView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ExpressYourselfViewModel(),
      builder: (context, _) {
        return BasePageView<ExpressYourselfViewModel>(
          backgroundColor: ColorConstants.kBackgroundColor(),
          content: const _ViewContent(),
        );
      },
    );
  }
}

class _ViewContent extends StatelessWidget {
  const _ViewContent();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: 50,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
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
        Positioned(
          top: 70,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              'Kendini İfade Et!',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        const Positioned(
          top: 112,
          left: 20,
          right: 20,
          child: Divider(
            thickness: 2,
          ),
        ),
        Positioned.fill(
          top: 140,
          right: 8,
          left: 8,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 180,
                      height: 180,
                      child: Image.asset(
                          'lib/assets/image/image_unknown_user.png',
                          fit: BoxFit.fitHeight),
                    ),
                    const DynamicSizedBox(size: 5),
                    const HeadlineTextWidget(headlineText: 'Profil Fotoğrafı'),
                    const DynamicSizedBox(size: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Wrap(
                        children: [
                          Text(
                            'Aydınlık ve belirgin bir profil fotoğrafı, başvurunuzu öne çıkarmak için oldukça önemlidir. :)',
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                    const DynamicSizedBox(size: 15),
                    CustomElevatedButton(
                      width: 120,
                      onPressed: () {},
                      borderColor: ColorConstants.kBackgroundColor(),
                      textString: 'Ekle',
                      textColor: ColorConstants.kBackgroundColor(),
                    ),
                    const DynamicSizedBox(size: 30),
                    const HeadlineTextWidget(headlineText: 'Cinsiyetiniz'),
                    const DynamicSizedBox(size: 12),
                    Column(
                      children: [
                        ...elevatedButtons.map((e) => CustomElevatedButton(
                              width: double.infinity,
                              onPressed: () {},
                              borderColor:
                                  ColorConstants.kElevatedButtonBorderColor(),
                              textString: e.textString,
                              textColor: ColorConstants.kDescriptionTextColor(),
                              isSelected: e.isSelected,
                            ))
                      ],
                    ),
                    const DynamicSizedBox(size: 30),
                    const HeadlineTextWidget(
                        headlineText: 'Pet Dostunuz Var mı?'),
                    const DynamicSizedBox(size: 12),
                    Row(
                      children: [
                        ...elevatedButtonsYesNo.map((e) => CustomElevatedButton(
                              width: 180,
                              onPressed: () {},
                              borderColor:
                                  ColorConstants.kElevatedButtonBorderColor(),
                              textString: e.textString,
                              textColor: ColorConstants.kDescriptionTextColor(),
                              isSelected: e.isSelected,
                            ))
                      ],
                    ),
                    const DynamicSizedBox(size: 30),
                    const HeadlineTextWidget(headlineText: 'Pet Dost Sayısı'),
                    const DynamicSizedBox(size: 12),
                    Column(
                      children: [
                        ...numberOfPetFriends.map((e) => CustomElevatedButton(
                              width: double.infinity,
                              onPressed: () {},
                              borderColor:
                                  ColorConstants.kElevatedButtonBorderColor(),
                              textString: e.textString,
                              textColor: ColorConstants.kDescriptionTextColor(),
                              isSelected: e.isSelected,
                            ))
                      ],
                    ),
                    const DynamicSizedBox(size: 30),
                    const HeadlineTextWidget(
                        headlineText: 'Eğitim Durumunuz :'),
                    const DynamicSizedBox(size: 12),
                    FormWidget(
                      labelText: 'Lütfen seçiniz',
                      onChanged: (p0) {},
                    ),
                    const DynamicSizedBox(size: 30),
                    const HeadlineTextWidget(headlineText: 'Aylık Net Maaş :'),
                    const DynamicSizedBox(size: 12),
                    FormWidget(
                      labelText: '25.000',
                      onChanged: (p0) {},
                    ),
                    const DynamicSizedBox(size: 30),
                    const HeadlineTextWidget(
                        headlineText: 'Ek Geliriniz Var mı?'),
                    const DynamicSizedBox(size: 12),
                    Row(
                      children: [
                        ...elevatedButtonsYesNo.map((e) => CustomElevatedButton(
                              width: 180,
                              onPressed: () {},
                              borderColor:
                                  ColorConstants.kElevatedButtonBorderColor(),
                              textString: e.textString,
                              textColor: ColorConstants.kDescriptionTextColor(),
                              isSelected: e.isSelected,
                            )),
                      ],
                    ),
                    const DynamicSizedBox(size: 30),
                    const HeadlineTextWidget(headlineText: 'Gelir Tipi :'),
                    const DynamicSizedBox(
                      size: 60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
