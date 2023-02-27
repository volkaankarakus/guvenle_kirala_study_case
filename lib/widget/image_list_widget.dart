import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ImageListWidget extends StatefulWidget {
  final int startIndex;
  const ImageListWidget({super.key, required this.startIndex});

  @override
  State<ImageListWidget> createState() => _ImageListWidgetState();
}

class _ImageListWidgetState extends State<ImageListWidget> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _autoScroll();
    });
    // ** adding to list
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  void _autoScroll() {
    final currentScrollPosition = _scrollController.offset;
    final scrollEndPosition = _scrollController.position.maxScrollExtent;
    scheduleMicrotask(
      () {
        _scrollController.animateTo(
            currentScrollPosition == scrollEndPosition ? 1 : scrollEndPosition,
            duration: const Duration(seconds: 30),
            curve: Curves.linear);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final subList = animationURLs.sublist(widget.startIndex);
    if (widget.startIndex > 0) {
      subList.addAll(animationURLs.sublist(0, widget.startIndex));
    }
    return Transform.rotate(
      angle: 1.9 * pi,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.6,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: subList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              child: Lottie.asset(subList[index].animationPath),
            );
          },
        ),
      ),
    );
  }
}

class LoginWidgetItemModel {
  String animationPath;
  LoginWidgetItemModel({required this.animationPath});
}

final animationURLs = [
  LoginWidgetItemModel(
      animationPath: 'lib/assets/lottie/lottie_page1_item1.json'),
  LoginWidgetItemModel(
      animationPath: 'lib/assets/lottie/lottie_page1_item2.json'),
  LoginWidgetItemModel(
      animationPath: 'lib/assets/lottie/lottie_page1_item3.json'),
  LoginWidgetItemModel(
      animationPath: 'lib/assets/lottie/lottie_page1_item4.json'),
];
