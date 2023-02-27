import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:guvenle_kirala_study_case/app/blueprints/base_view.dart';
import 'package:guvenle_kirala_study_case/view_model/first_page_view_model.dart';
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
          content: _ViewContent(),
        );
      },
    );
  }
}


class _ViewContent extends StatelessWidget {
  const _ViewContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}