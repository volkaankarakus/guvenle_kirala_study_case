import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:guvenle_kirala_study_case/app/app_defaults.dart';
import 'package:guvenle_kirala_study_case/widget/custom_circular_proggress_indicator.dart';

class CircleCardWidget extends StatelessWidget {
  final Widget child;
  final bool showCard;

  const CircleCardWidget({
    Key? key,
    required this.child,
    this.showCard = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        child,
        Stack(
          children: [
            if (showCard) const Positioned.fill(child: IgnorePointer()),
            if (showCard)
              TweenAnimationBuilder<num>(
                tween: Tween(begin: 0.0, end: 0.2),
                duration: const Duration(milliseconds: 200),
                builder: (_, value, __) {
                  return BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(
                        color: theme.shadowColor.withOpacity(value as double)),
                  );
                },
              ),
            AnimatedPositioned(
              left: 40,
              right: 40,
              top: showCard ? MediaQuery.of(context).size.height / 4 : -420,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOutCubic,
              child: RepaintBoundary(
                child: Card(
                  shape: const CircleBorder(),
                  elevation: 12,
                  child: Padding(
                    padding: const EdgeInsets.all(
                        AppDefaults.kStandartContentPadding),
                    child: _CardContents(showCard),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _CardContents extends StatefulWidget {
  final bool isDone;

  const _CardContents(this.isDone);

  @override
  _CardContentsState createState() => _CardContentsState();
}

class _CardContentsState extends State<_CardContents>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant _CardContents oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!oldWidget.isDone && widget.isDone) {
      _controller.forward(from: 0);
    } else if (oldWidget.isDone && !widget.isDone) {
      _controller.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: CurvedAnimation(
        curve: const Interval(
          0.2,
          0.6,
          curve: Curves.elasticOut,
        ),
        parent: _controller,
      ),
      child: const CustomCircularProgressIndicator(),
    );

    /* return Column(
      children: [
        ScaleTransition(
          scale: CurvedAnimation(
            curve: Interval(
              0.2,
              0.6,
              curve: Curves.elasticOut,
            ),
            parent: _controller,
          ),
          child: CustomCircularProgressIndicator(),
        ),
        SizedBox(height: 20),
        Text(
          'Congratulations!',
          style: theme.textTheme.headline1.copyWith(fontSize: 30),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 30),
          child: TrackedOutText(
            'You have successfully completed watching this talk. '
            'You get 50 completely meaningless virtual points!',
            CurvedAnimation(
              curve: Interval(0.45, 0.7),
              parent: _controller,
            ),
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyText2.copyWith(
              fontSize: 14,
            ),
          ),
        ),
      ],
    ); */
  }
}

/* class TrackedOutText extends StatefulWidget {
  final String text;

  final List<TextSpan> _slices;
  final List<TextSpan> _slicesTransparent;

  final Animation<double> progress;

  final TextAlign textAlign;
  final TextStyle style;

  TrackedOutText(
    this.text,
    this.progress, {
    this.textAlign,
    this.style,
  })  : _slices = _generateSlices(text, style, false).toList(growable: false),
        _slicesTransparent =
            _generateSlices(text, style, true).toList(growable: false);

  static Iterable<TextSpan> _generateSlices(
      String text, TextStyle style, bool transparent) sync* {
    const step = 3;
    var i = 0;
    for (; i < text.length - step; i += step) {
      yield TextSpan(
        text: text.substring(i, i + step),
        style: transparent ? style.apply(color: Colors.transparent) : null,
      );
    }
    yield TextSpan(
      text: text.substring(i),
      style: transparent ? style.apply(color: Colors.transparent) : null,
    );
  }

  @override
  _TrackedOutTextState createState() => _TrackedOutTextState();
}

class _TrackedOutTextState extends State<TrackedOutText> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.progress,
      builder: (BuildContext context, Widget child) {
        return Text.rich(
          TextSpan(
            children: [
              for (var i = 0; i < widget._slices.length; i++)
                (i / widget._slices.length < widget.progress.value)
                    ? widget._slices[i]
                    : widget._slicesTransparent[i],
            ],
          ),
          textAlign: widget.textAlign,
          style: widget.style,
        );
      },
    );
  }
} */
