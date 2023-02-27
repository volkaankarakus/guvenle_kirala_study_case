import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/blueprints/base_view_model.dart';
import 'package:guvenle_kirala_study_case/widget/box_container.dart';
import 'package:guvenle_kirala_study_case/widget/circle_card_widget.dart';
import 'package:guvenle_kirala_study_case/widget/custom_circular_proggress_indicator.dart';
import 'package:guvenle_kirala_study_case/widget/custom_transition_switcher.dart';
import 'package:provider/provider.dart';

class BasePageView<T extends BaseViewModel> extends StatelessWidget {
  final Widget? floatingActionButton;
  final AppBar? appBar;
  final Widget? drawer;
  final Widget? endDrawer;
  final Widget content;
  final Widget? bottomNavigationBar;
  final bool haveScaffold;
  final bool showCircleCard;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final bool fabRequiresStatus;
  final bool openEndDrawerWithGesture;
  final bool showInitialLoading;
  final Color? backgroundColor;

  const BasePageView({
    Key? key,
    this.appBar,
    this.floatingActionButton,
    this.drawer,
    this.endDrawer,
    this.bottomNavigationBar,
    this.content = const SizedBox(),
    this.haveScaffold = true,
    this.showCircleCard = true,
    this.scaffoldKey,
    this.fabRequiresStatus = true,
    this.openEndDrawerWithGesture = true,
    this.showInitialLoading = true,
    this.backgroundColor = const Color.fromARGB(255, 255, 255, 255),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return haveScaffold
        ? Scaffold(
            // ** Nav Bar icin bu ikisini Ekledim
            resizeToAvoidBottomInset: false,
            extendBody: true,
            // **

            backgroundColor: backgroundColor,
            key: scaffoldKey,
            floatingActionButton: floatingActionButton,
            appBar: appBar,
            drawer: drawer,
            endDrawer: endDrawer,
            endDrawerEnableOpenDragGesture: openEndDrawerWithGesture,
            bottomNavigationBar: bottomNavigationBar,
            body: _PageLoadingWidget<T>(
              content: content,
              showCircleCard: showCircleCard,
            ),
          )
        : _PageLoadingWidget<T>(
            content: content,
            showCircleCard: showCircleCard,
            showInitialLoading: showInitialLoading,
          );
  }
}

class _PageLoadingWidget<T extends BaseViewModel> extends StatefulWidget {
  final Widget content;
  final bool showCircleCard;
  final bool showInitialLoading;
  const _PageLoadingWidget({
    Key? key,
    required this.content,
    this.showCircleCard = false,
    this.showInitialLoading = true,
  }) : super(key: key);

  @override
  __PageLoadingWidgetState<T> createState() => __PageLoadingWidgetState<T>();
}

class __PageLoadingWidgetState<T extends BaseViewModel>
    extends State<_PageLoadingWidget> {
  @override
  void initState() {
    super.initState();
    // ignore: invalid_use_of_protected_member
    context.read<T>().getData();
  }

  @override
  Widget build(BuildContext context) {
    final viewLoaded = context.select<T, bool>((value) => value.viewLoaded);

    return CustomTransitionSwitcher(
      child: !viewLoaded && widget.showInitialLoading
          ? const BoxContainer(
              child: CustomCircularProgressIndicator(),
            )
          : _CircleLoadingWidget<T>(
              content: widget.content,
              showCircleCard: widget.showCircleCard,
            ),
    );
  }
}

class _CircleLoadingWidget<T extends BaseViewModel> extends StatelessWidget {
  final Widget content;
  final bool showCircleCard;
  const _CircleLoadingWidget({
    Key? key,
    required this.content,
    this.showCircleCard = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!showCircleCard) {
      return content;
    }

    return Selector<T, bool>(
      selector: (_, model) => model.loading,
      builder: (context, value, child) {
        return CircleCardWidget(
          showCard: value,
          child: child ?? const SizedBox(),
        );
      },
      child: content,
    );
  }
}
