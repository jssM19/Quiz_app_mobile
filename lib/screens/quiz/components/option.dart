import 'package:flutter/material.dart';
import 'package:quiz_app/constans.dart';

class Option extends StatelessWidget {
  const Option({super.key, this.text, this.index, this.press});

  final String? text;
  final int? index;
  final VoidCallback? press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        padding: const EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          border: Border.all(color: kGrayColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "{$index! + 1} $text",
              style: TextStyle(color: kGrayColor, fontSize: 16),
            ),
            Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: kGrayColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
