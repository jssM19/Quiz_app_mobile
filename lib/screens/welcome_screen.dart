import 'package:flutter/material.dart';

import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: WebsafeSvg.asset('assets/icons/bg.svg', fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
