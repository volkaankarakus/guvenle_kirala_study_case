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
              'Kendini ??fade Et!',
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
                    const __PhotoAreaWidget(),
                    const DynamicSizedBox(size: 30),
                    const _GenderItemWidget(),
                    const DynamicSizedBox(size: 30),
                    const _HaveAnyPetFriendsWidget(),
                    const DynamicSizedBox(size: 30),
                    const _EducationStatueWidget(),
                    const DynamicSizedBox(size: 30),
                    const _NetMonthlySalaryWidget(),
                    const DynamicSizedBox(size: 30),
                    const _HaveAnyExtraIncomeWidget(),
                    const DynamicSizedBox(
                      size: 30,
                    ),
                    const _CurrentlyRentAmountWidget(),
                    const DynamicSizedBox(
                      size: 30,
                    ),
                    const HeadlineTextWidget(
                        headlineText:
                            'Kiralamak ??stedi??iniz M??lk??n\nFiyat Aral??????'),
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
                          Text('En D??????k',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color: ColorConstants
                                          .kDescriptionTextColor())),
                          Text('En Y??ksek',
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
                              width: MediaQuery.of(context).size.width * 0.41,
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
                    const _ExpressYourselfFormWidget(),
                    const DynamicSizedBox(size: 30),
                    const _SubmitButtonWidget(),
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

class _SubmitButtonWidget extends StatelessWidget {
  const _SubmitButtonWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomElevatedButton(
          width: 200,
          onPressed: () {
            context.read<ExpressYourselfViewModel>().submitDataToModel();
          },
          backgroundColor: ColorConstants.kBackgroundColor(),
          borderColor: ColorConstants.kBackgroundColor(),
          textString: 'Kaydet',
          textColor: Colors.white,
          textFontWeight: FontWeight.w600,
        )
      ],
    );
  }
}

class _ExpressYourselfFormWidget extends StatelessWidget {
  const _ExpressYourselfFormWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.titleSmall,
              children: <TextSpan>[
                const TextSpan(
                    text: 'Yeni ev sahibinize biraz kendinizden bahsedin.'),
                TextSpan(
                    text: ' ??rn; Ta????nma nedenim ??udur...',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: ColorConstants.kDescriptionTextColor(),
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
                  'Merhaba, ben ailem ile beraber ??stanbuldan i?? i??in ??zmir/Kar????yakaya ta????n??yorum. Evinizin konumu ofisime ??ok yak??n.',
              onChanged: context.read<ExpressYourselfViewModel>().setValue,
            );
          },
        ),
        const DynamicSizedBox(size: 12),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
              '${DateFormat.yMd('tr_TR').format(context.read<ExpressYourselfViewModel>().updatedDate!)} tarihinde g??ncellendi.',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: ColorConstants.kDescriptionTextColor(),
                    fontSize: 16,
                  )),
        )
      ],
    );
  }
}

class _HaveAnyExtraIncomeWidget extends StatelessWidget {
  const _HaveAnyExtraIncomeWidget();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const HeadlineTextWidget(headlineText: 'Ek Geliriniz Var m???'),
      const DynamicSizedBox(size: 12),
      Row(
        children: [
          ...context
              .watch<ExpressYourselfViewModel>()
              .extraIncomeYesNoList
              .map((e) => CustomElevatedButton(
                    width: MediaQuery.of(context).size.width * 0.41,
                    onPressed: () {
                      context.read<ExpressYourselfViewModel>().tapToSelect(
                          modelList: context
                              .read<ExpressYourselfViewModel>()
                              .extraIncomeYesNoList,
                          model: e);
                    },
                    borderColor: !(e.isSelected)
                        ? ColorConstants.kElevatedButtonBorderColor()
                        : ColorConstants.kBackgroundColor(),
                    textString: e.textString,
                    textColor: !(e.isSelected)
                        ? ColorConstants.kDescriptionTextColor()
                        : ColorConstants.kBackgroundColor(),
                    backgroundColor: !(e.isSelected)
                        ? Colors.white
                        : ColorConstants.kSelectedElevatedButtonColor(),
                    isSelected: e.isSelected,
                  )),
        ],
      ),
      Selector<ExpressYourselfViewModel, bool>(
        shouldRebuild: (_, __) => true,
        selector: (_, provider) => provider.isExtraIncomeAnswerYes,
        builder: (context, value, _) {
          if (value == false) {
            return const SizedBox.shrink();
          } else {
            return const _IncomeTypeWidget();
          }
        },
      )
    ]);
  }
}

class _EducationStatueWidget extends StatelessWidget {
  const _EducationStatueWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadlineTextWidget(headlineText: 'E??itim Durumunuz :'),
        const DynamicSizedBox(size: 12),
        InkWell(
          onTap: () => context
              .read<ExpressYourselfViewModel>()
              .navigateToEducationStatuePage(),
          child: IgnorePointer(
            child: FormWidget(
              labelText: context
                      .watch<ExpressYourselfViewModel>()
                      .profileModel
                      .educationStatus ??
                  'L??tfen se??iniz',
              onChanged: (p0) {},
            ),
          ),
        )
      ],
    );
  }
}

class _HaveAnyPetFriendsWidget extends StatelessWidget {
  const _HaveAnyPetFriendsWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadlineTextWidget(headlineText: 'Pet Dostunuz Var m???'),
        const DynamicSizedBox(size: 12),
        Row(
          children: [
            ...context
                .watch<ExpressYourselfViewModel>()
                .anyPetFriendList
                .map((e) => CustomElevatedButton(
                      width: MediaQuery.of(context).size.width * 0.41,
                      onPressed: () {
                        context.read<ExpressYourselfViewModel>().tapToSelect(
                            modelList: context
                                .read<ExpressYourselfViewModel>()
                                .anyPetFriendList,
                            model: e);
                      },
                      borderColor: !(e.isSelected)
                          ? ColorConstants.kElevatedButtonBorderColor()
                          : ColorConstants.kBackgroundColor(),
                      textString: e.textString,
                      textColor: !(e.isSelected)
                          ? ColorConstants.kDescriptionTextColor()
                          : ColorConstants.kBackgroundColor(),
                      backgroundColor: !(e.isSelected)
                          ? Colors.white
                          : ColorConstants.kSelectedElevatedButtonColor(),
                      isSelected: e.isSelected,
                    ))
          ],
        ),
        const DynamicSizedBox(size: 30),
        Selector<ExpressYourselfViewModel, bool>(
          shouldRebuild: (_, __) => true,
          selector: (_, provider) => provider.isPetSelectionAnswerYes,
          builder: (context, value, _) {
            if (value == false) {
              return const SizedBox.shrink();
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeadlineTextWidget(headlineText: 'Pet Dost Say??s??'),
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
                                              .read<ExpressYourselfViewModel>()
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
                  )
                ],
              );
            }
          },
        )
      ],
    );
  }
}

class _GenderItemWidget extends StatelessWidget {
  const _GenderItemWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadlineTextWidget(headlineText: 'Cinsiyetiniz'),
        const DynamicSizedBox(size: 12),
        ...context
            .watch<ExpressYourselfViewModel>()
            .genderList
            .map((e) => CustomElevatedButton(
                  width: double.infinity,
                  backgroundColor: !(e.isSelected)
                      ? Colors.white
                      : ColorConstants.kSelectedElevatedButtonColor(),
                  onPressed: () {
                    context.read<ExpressYourselfViewModel>().tapToSelect(
                        modelList:
                            context.read<ExpressYourselfViewModel>().genderList,
                        model: e);
                  },
                  borderColor: !(e.isSelected)
                      ? ColorConstants.kElevatedButtonBorderColor()
                      : ColorConstants.kBackgroundColor(),
                  textString: e.textString,
                  textColor: !(e.isSelected)
                      ? ColorConstants.kDescriptionTextColor()
                      : ColorConstants.kBackgroundColor(),
                  isSelected: e.isSelected,
                )),
      ],
    );
  }
}

class _CurrentlyRentAmountWidget extends StatelessWidget {
  const _CurrentlyRentAmountWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadlineTextWidget(headlineText: 'Mevcut Kira Miktar??n??z'),
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
        )
      ],
    );
  }
}

class _IncomeTypeWidget extends StatelessWidget {
  const _IncomeTypeWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DynamicSizedBox(size: 30),
        const HeadlineTextWidget(headlineText: 'Gelir Tipi :'),
        const DynamicSizedBox(
          size: 12,
        ),
        FormWidget(
          labelText: 'L??tfen se??iniz',
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
        )
      ],
    );
  }
}

class _NetMonthlySalaryWidget extends StatelessWidget {
  const _NetMonthlySalaryWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadlineTextWidget(headlineText: 'Ayl??k Net Maa?? :'),
        const DynamicSizedBox(size: 12),
        FormWidget(
          keyboardType: TextInputType.number,
          isCurrencyText: true,
          labelText: '25.000',
          onChanged: (p0) {},
        )
      ],
    );
  }
}

class __PhotoAreaWidget extends StatelessWidget {
  const __PhotoAreaWidget();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        width: 180,
        height: 180,
        child: Image.asset('lib/assets/image/image_unknown_user.png',
            fit: BoxFit.fitHeight),
      ),
      const DynamicSizedBox(size: 5),
      const HeadlineTextWidget(headlineText: 'Profil Foto??raf??'),
      const DynamicSizedBox(size: 12),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Wrap(
          children: [
            Text(
              'Ayd??nl??k ve belirgin bir profil foto??raf??, ba??vurunuzu ??ne ????karmak i??in olduk??a ??nemlidir. :)',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
      const DynamicSizedBox(size: 15),
      CustomElevatedButton(
        width: 120,
        onPressed: () {
          //context.read<ExpressYourselfViewModel>().openFiles();
        },
        borderColor: ColorConstants.kBackgroundColor(),
        textString: 'Ekle',
        textColor: ColorConstants.kBackgroundColor(),
      )
    ]);
  }
}

class _NumberOfPetWidget extends StatelessWidget {
  const _NumberOfPetWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [],
    );
  }
}
