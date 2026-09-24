import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constans.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/modelos/question.dart';
import 'package:quiz_app/screens/quiz/components/progress_bar.dart';
import 'package:quiz_app/screens/quiz/components/question_card.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),
                  child: ProgressBar(),
                ),
                SizedBox(height: kDefaultPadding),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),
                  child: Obx(
                    () => Text.rich(
                      TextSpan(
                        text:
                            "Question ${_questionController.questionNumber.value}",
                        style: Theme.of(context).textTheme.headlineSmall!
                            .copyWith(color: kSecondaryColor),
                        children: [
                          TextSpan(
                            text: "/${_questionController.questions.length}",
                            style: Theme.of(context).textTheme.headlineSmall!
                                .copyWith(color: kSecondaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Divider(thickness: 1, color: Colors.grey),
                SizedBox(height: kDefaultPadding),
                Expanded(
                  child: PageView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _questionController.pageController,
                    onPageChanged: _questionController.updateTheQnNum,
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
