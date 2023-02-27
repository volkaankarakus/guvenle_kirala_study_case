import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/blueprints/base_view.dart';
import 'package:guvenle_kirala_study_case/app/constants/color_constants.dart';
import 'package:guvenle_kirala_study_case/view_model/express_yourself_view_model.dart';
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
          )),
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
          top: 154,
          right: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 180,
                height: 180,
                child: Image.asset('lib/assets/image/image_unknown_user.png',
                    fit: BoxFit.fitHeight),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
