import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:quiz_app/constans.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: WebsafeSvg.asset('assets/icons/bg.svg', fit: BoxFit.cover),
          ),
          Column(
            children: [
              Spacer(),
              Text(
                "Score",
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium?.copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "30/40",
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge?.copyWith(color: kSecondaryColor),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
