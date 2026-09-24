// We use the get package for our state management.
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screens/score/score_screen.dart';
import 'package:quiz_app/modelos/question.dart';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // We animate our progress bar.
  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => _animation;

  PageController _pageController = PageController();
  PageController get pageController => _pageController;

  final List<Question> _questions = sampleData
      .map(
        (question) => Question(
          id: question['id'],
          question: question['question'],
          options: question['options'],
          answerIndex: question['answerIndex'],
        ),
      )
      .toList();

  List<Question> get questions => _questions;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  int _correctAns = 0;
  int get correctAns => _correctAns;

  int _selectedAns = 0;
  int get selectedAns => _selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => _numOfCorrectAns;
  @override
  void onInit() {
    // Initialize the animation controller.
    _animationController = AnimationController(
      duration: const Duration(seconds: 60),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answerIndex!;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    _animationController.stop();
    update();

    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
        duration: Duration(milliseconds: 250),
        curve: Curves.ease,
      );

      // Reset the counter
      _animationController.reset();

      // Then start it again
      // Once timer is finish go to the next qn
      _animationController.forward().whenComplete(nextQuestion);
    }

    Get.to(ScoreScreen());
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
