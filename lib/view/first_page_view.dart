import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/blueprints/base_view.dart';
import 'package:guvenle_kirala_study_case/app/constants/color_constants.dart';
import 'package:guvenle_kirala_study_case/view_model/first_page_view_model.dart';
import 'package:guvenle_kirala_study_case/widget/custom_blurred_elevated_button.dart';
import 'package:guvenle_kirala_study_case/widget/image_list_widget.dart';
import 'package:provider/provider.dart';

class FirstPageView extends StatefulWidget {
  const FirstPageView({super.key});

  @override
  State<FirstPageView> createState() => _FirstPageViewState();
}

class _FirstPageViewState extends State<FirstPageView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FirstPageViewModel(),
      builder: (context, _) {
        return BasePageView<FirstPageViewModel>(
          backgroundColor: ColorConstants.kBackgroundColor(),
          fabRequiresStatus: false,
          showInitialLoading: false,
          content: const _ViewContent(),
        );
      },
    );
  }
}

class _ViewContent extends StatelessWidget {
  const _ViewContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -10,
          left: -150,
          child: Row(
            children: const [
              ImageListWidget(startIndex: 0),
              ImageListWidget(startIndex: 1),
              ImageListWidget(startIndex: 2),
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  ColorConstants.kBackgroundColor().withOpacity(0),
                  ColorConstants.kBackgroundColor().withOpacity(0.4),
                  ColorConstants.kBackgroundColor().withOpacity(1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.center,
              )),
            )),
        const Positioned(
          top: 300,
          right: 25,
          left: 25,
          child: ExpressYourselfButtton(),
        ),
        Positioned(
          top: 550,
          left: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Güvenle Kirala Study Case',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ExpressYourselfButtton extends StatelessWidget {
  const ExpressYourselfButtton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBlurredElevatedButton(
      onPressed: context.read<FirstPageViewModel>().navigateToExpressYourself,
      isBlurred: true,
      blurColorOpacity: 0.35,
      bgColor: Colors.transparent,
      blurValue: 20,
      child: Text('Kendini İfade Et ',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.white)),
    );
  }
}
