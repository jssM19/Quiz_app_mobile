import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:quiz_app/constans.dart';
import 'package:quiz_app/screens/quiz/components/progress_bar.dart';
import 'package:quiz_app/screens/quiz/components/question_card.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: WebsafeSvg.asset('assets/icons/bg.svg', fit: BoxFit.cover),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProgressBar(),
                SizedBox(height: kDefaultPadding),
                Text.rich(
                  TextSpan(
                    text: "Question 1",
                    style: Theme.of(
                      context,
                    ).textTheme.displayMedium?.copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: "/10",
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(color: kSecondaryColor),
                      ),
                    ],
                  ),
                ),
                Divider(thickness: 1, color: Colors.grey),
                SizedBox(height: kDefaultPadding),
                Expanded(
                  child: PageView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _questionController.pageController,
                    itemCount: _questionController.questions.length,
                    itemBuilder: (context, index) => QuestionCard(
                      question: _questionController.questions[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
