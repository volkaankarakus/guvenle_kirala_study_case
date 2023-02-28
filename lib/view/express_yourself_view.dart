import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/blueprints/base_view.dart';
import 'package:guvenle_kirala_study_case/app/constants/color_constants.dart';
import 'package:guvenle_kirala_study_case/view_model/express_yourself_view_model.dart';
import 'package:guvenle_kirala_study_case/widget/custom_elevated_button.dart';
import 'package:guvenle_kirala_study_case/widget/dynamic_sized_box_widget.dart';
import 'package:guvenle_kirala_study_case/widget/form_big_widget.dart';
import 'package:guvenle_kirala_study_case/widget/form_widget.dart';
import 'package:guvenle_kirala_study_case/widget/headline_text_widget.dart';
import 'package:intl/intl.dart';
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
                        ...context
                            .read<ExpressYourselfViewModel>()
                            .genderList
                            .map((e) => CustomElevatedButton(
                                  width: double.infinity,
                                  backgroundColor: !(e.isSelected)
                                      ? Colors.white
                                      : ColorConstants
                                          .kSelectedElevatedButtonColor(),
                                  onPressed: () {
                                    context
                                        .read<ExpressYourselfViewModel>()
                                        .tapToSelect(
                                            modelList: context
                                                .read<
                                                    ExpressYourselfViewModel>()
                                                .genderList,
                                            model: e);
                                  },
                                  borderColor: !(e.isSelected)
                                      ? ColorConstants
                                          .kElevatedButtonBorderColor()
                                      : ColorConstants.kBackgroundColor(),
                                  textString: e.textString,
                                  textColor: !(e.isSelected)
                                      ? ColorConstants.kDescriptionTextColor()
                                      : ColorConstants.kBackgroundColor(),
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
                        ...context
                            .read<ExpressYourselfViewModel>()
                            .anyPetFriendList
                            .map((e) => CustomElevatedButton(
                                  width: 180,
                                  onPressed: () {
                                    context
                                        .read<ExpressYourselfViewModel>()
                                        .tapToSelect(
                                            modelList: context
                                                .read<
                                                    ExpressYourselfViewModel>()
                                                .anyPetFriendList,
                                            model: e);
                                  },
                                  borderColor: !(e.isSelected)
                                      ? ColorConstants
                                          .kElevatedButtonBorderColor()
                                      : ColorConstants.kBackgroundColor(),
                                  textString: e.textString,
                                  textColor: !(e.isSelected)
                                      ? ColorConstants.kDescriptionTextColor()
                                      : ColorConstants.kBackgroundColor(),
                                  backgroundColor: !(e.isSelected)
                                      ? Colors.white
                                      : ColorConstants
                                          .kSelectedElevatedButtonColor(),
                                  isSelected: e.isSelected,
                                ))
                      ],
                    ),
                    const DynamicSizedBox(size: 30),
                    const HeadlineTextWidget(headlineText: 'Pet Dost Sayısı'),
                    const DynamicSizedBox(size: 12),
                    Column(
                      children: [
                        ...context
                            .read<ExpressYourselfViewModel>()
                            .numberOfPetFriendList
                            .map((e) => CustomElevatedButton(
                                  width: double.infinity,
                                  onPressed: () {
                                    context
                                        .read<ExpressYourselfViewModel>()
                                        .tapToSelect(
                                            modelList: context
                                                .read<
                                                    ExpressYourselfViewModel>()
                                                .numberOfPetFriendList,
                                            model: e);
                                  },
                                  borderColor: !(e.isSelected)
                                      ? ColorConstants
                                          .kElevatedButtonBorderColor()
                                      : ColorConstants.kBackgroundColor(),
                                  textString: e.textString,
                                  textColor: !(e.isSelected)
                                      ? ColorConstants.kDescriptionTextColor()
                                      : ColorConstants.kBackgroundColor(),
                                  backgroundColor: !(e.isSelected)
                                      ? Colors.white
                                      : ColorConstants
                                          .kSelectedElevatedButtonColor(),
                                  isSelected: e.isSelected,
                                ))
                      ],
                    ),
                    const DynamicSizedBox(size: 30),
                    const HeadlineTextWidget(
                        headlineText: 'Eğitim Durumunuz :'),
                    const DynamicSizedBox(size: 12),
                    InkWell(
                      onTap: () => context
                          .read<ExpressYourselfViewModel>()
                          .navigateToEducationStatuePage(),
                      child: IgnorePointer(
                        child: FormWidget(
                          labelText: context
                                  .read<ExpressYourselfViewModel>()
                                  .profileModel
                                  .educationStatus ??
                              'Lütfen seçiniz',
                          onChanged: (p0) {},
                        ),
                      ),
                    ),
                    const DynamicSizedBox(size: 30),
                    const HeadlineTextWidget(headlineText: 'Aylık Net Maaş :'),
                    const DynamicSizedBox(size: 12),
                    FormWidget(
                      keyboardType: TextInputType.number,
                      isCurrencyText: true,
                      labelText: '25.000',
                      onChanged: (p0) {},
                    ),
                    const DynamicSizedBox(size: 30),
                    const HeadlineTextWidget(
                        headlineText: 'Ek Geliriniz Var mı?'),
                    const DynamicSizedBox(size: 12),
                    Row(
                      children: [
                        ...context
                            .read<ExpressYourselfViewModel>()
                            .extraIncomeYesNoList
                            .map((e) => CustomElevatedButton(
                                  width: 180,
                                  onPressed: () {
                                    context
                                        .read<ExpressYourselfViewModel>()
                                        .tapToSelect(
                                            modelList: context
                                                .read<
                                                    ExpressYourselfViewModel>()
                                                .extraIncomeYesNoList,
                                            model: e);
                                  },
                                  borderColor: !(e.isSelected)
                                      ? ColorConstants
                                          .kElevatedButtonBorderColor()
                                      : ColorConstants.kBackgroundColor(),
                                  textString: e.textString,
                                  textColor: !(e.isSelected)
                                      ? ColorConstants.kDescriptionTextColor()
                                      : ColorConstants.kBackgroundColor(),
                                  backgroundColor: !(e.isSelected)
                                      ? Colors.white
                                      : ColorConstants
                                          .kSelectedElevatedButtonColor(),
                                  isSelected: e.isSelected,
                                )),
                      ],
                    ),
                    const DynamicSizedBox(size: 30),
                    const HeadlineTextWidget(headlineText: 'Gelir Tipi :'),
                    const DynamicSizedBox(
                      size: 12,
                    ),
                    FormWidget(
                      labelText: 'Lütfen seçiniz',
                      onChanged: (p0) {},
                    ),
                    const DynamicSizedBox(
                      size: 12,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.question_mark_sharp,
                            size: 18,
                            color: ColorConstants.kBackgroundColor(),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text('Gelir Ekle',
                              style: Theme.of(context).textTheme.bodySmall),
                        ),
                      ],
                    ),
                    const DynamicSizedBox(
                      size: 30,
                    ),
                    const HeadlineTextWidget(
                        headlineText: 'Mevcut Kira Miktarınız'),
                    const DynamicSizedBox(
                      size: 12,
                    ),
                    FormWidget(
                      keyboardType: TextInputType.number,
                      isCurrencyText: true,
                      labelText: '7.000',
                      onChanged: (p0) {
                        context
                            .read<ExpressYourselfViewModel>()
                            .setCurrentRentAmount(rentAmount: p0);
                      },
                    ),
                    const DynamicSizedBox(
                      size: 30,
                    ),
                    const HeadlineTextWidget(
                        headlineText:
                            'Kiralamak İstediğiniz Mülkün\nFiyat Aralığı'),
                    const DynamicSizedBox(
                      size: 30,
                    ),
                    Flexible(
                      child: Selector<ExpressYourselfViewModel, RangeValues>(
                        shouldRebuild: (_, __) => true,
                        selector: (_, provider) => provider.values,
                        builder: (context, value, _) {
                          return RangeSlider(
                            values: value,
                            max: 100000,
                            min: 0,
                            activeColor: ColorConstants.kBackgroundColor(),
                            inactiveColor:
                                ColorConstants.kDescriptionTextColor()
                                    .withOpacity(0.6),
                            labels:
                                context.read<ExpressYourselfViewModel>().labels,
                            onChanged: context
                                .read<ExpressYourselfViewModel>()
                                .rangeValuesOnChanged,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('En Düşük',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: ColorConstants
                                          .kDescriptionTextColor())),
                          Text('En Yüksek',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: ColorConstants
                                          .kDescriptionTextColor()))
                        ],
                      ),
                    ),
                    const DynamicSizedBox(size: 12),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IgnorePointer(
                            ignoring: true,
                            child: SizedBox(
                              width: 200,
                              child: FormWidget(
                                keyboardType: TextInputType.number,
                                isCurrencyText: true,
                                labelText: context
                                    .watch<ExpressYourselfViewModel>()
                                    .values
                                    .start
                                    .toStringAsFixed(0),
                                onChanged: (p0) {},
                              ),
                            ),
                          ),
                          IgnorePointer(
                            ignoring: true,
                            child: SizedBox(
                              width: 200,
                              child: FormWidget(
                                keyboardType: TextInputType.number,
                                isCurrencyText: true,
                                labelText: context
                                    .watch<ExpressYourselfViewModel>()
                                    .values
                                    .end
                                    .toStringAsFixed(0),
                                onChanged: (p0) {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const DynamicSizedBox(size: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.titleSmall,
                          children: <TextSpan>[
                            const TextSpan(
                                text:
                                    'Yeni ev sahibinize biraz kendinizden bahsedin.'),
                            TextSpan(
                                text: ' Örn; Taşınma nedenim şudur...',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        color: ColorConstants
                                            .kDescriptionTextColor(),
                                        fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                    const DynamicSizedBox(size: 12),
                    Selector<ExpressYourselfViewModel, int>(
                      shouldRebuild: (_, __) => true,
                      selector: (_, provider) => provider.enteredLetterLength,
                      builder: (context, value, _) {
                        return FormBigWidget(
                          enteredTextLetters: value,
                          labelText:
                              'Merhaba, ben ailem ile beraber İstanbuldan iş için İzmir/Karşıyakaya taşınıyorum. Evinizin konumu ofisime çok yakın.',
                          onChanged:
                              context.read<ExpressYourselfViewModel>().setValue,
                        );
                      },
                    ),
                    const DynamicSizedBox(size: 12),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                          '${DateFormat.yMd('tr_TR').format(context.read<ExpressYourselfViewModel>().updatedDate!)} tarihinde güncellendi.',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                color: ColorConstants.kDescriptionTextColor(),
                                fontSize: 16,
                              )),
                    ),
                    const DynamicSizedBox(size: 30),
                    CustomElevatedButton(
                      width: 200,
                      onPressed: () {},
                      backgroundColor: ColorConstants.kBackgroundColor(),
                      borderColor: ColorConstants.kBackgroundColor(),
                      textString: 'Kaydet',
                      textColor: Colors.white,
                      textFontWeight: FontWeight.w600,
                    ),
                    const DynamicSizedBox(size: 30),
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
