import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('lib/assets/logo/logo-removebg-preview.png',
          height: 350, fit: BoxFit.fitHeight),
    );
  }
}
