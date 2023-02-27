import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/blueprints/base_view.dart';
import 'package:guvenle_kirala_study_case/view_model/express_yourself_view_model.dart';
import 'package:guvenle_kirala_study_case/widget/box_container.dart';
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
        return const BasePageView<ExpressYourselfViewModel>(
          content: _ViewContent(),
        );
      },
    );
  }
}

class _ViewContent extends StatelessWidget {
  const _ViewContent();

  @override
  Widget build(BuildContext context) {
    return const BoxContainer(
      height: double.infinity,
      width: double.infinity,
      color: Colors.red,
    );
  }
}
