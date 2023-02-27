import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          width: 100,
          height: 100,
          child: Lottie.asset('lib/assets/lottie/lottie_loading_house.json',
              height: 100, reverse: true, fit: BoxFit.fitHeight),
        ),
      ),
    );
  }
}
