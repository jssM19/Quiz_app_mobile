import 'package:flutter/material.dart';
import 'package:quiz_app/constans.dart';
import 'package:quiz_app/screens/quiz/components/option.dart';
import 'package:quiz_app/modelos/question.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key, required this.question});

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question?.question ?? '',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(color: Colors.black),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options!.length,
            (index) => Option(
              index: index,
              text: question.options![index],
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}
