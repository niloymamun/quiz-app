import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'questions_screen.dart';
import 'result_screen.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'Start-Screen'; //Local variable
  List<String> selectAnswer = []; // This is List of String
  // This is Function of Lifting Statement i min Switch page
  void switchScreen() {
    setState(() {
      activeScreen = 'Questions-Screen';
    });
  }

  void chooseAnswer(String answer) {
    selectAnswer.add(answer);
    if (selectAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'Result-Screen';
      });
    }
  }

  /*
  Above chooseAnswer function working one parameter received
  and add selectAnswer list add when you selected chose any answer
  then add ane by one list and check if statement questions data 
  list == selectAnswer list is value is true then move Result Activities   
  */
  void restartQuiz() {
    setState(() {
      selectAnswer = [];
      activeScreen = 'Questions-Screen';
    });
  }
  /*
  Above Function Working only Restart Button 
  when click restart button the my selectList is 
  empty and moved > Questions-Screen class
  */

  @override
  Widget build(context) {
    Widget screenSwitch = StartScreen(switchScreen);
    //Local variable Widget
    if (activeScreen == 'Questions-Screen') {
      screenSwitch = QuestionsScreen(onSelectAnswer: chooseAnswer);
      /* QuestionsScreen class accepted one parameter 
      parameter received user selected answer.return
      */
    }
    if (activeScreen == 'Result-Screen') {
      screenSwitch = ResultScreen(
        chosenAnswer: selectAnswer,
        onRestart: restartQuiz,
      );
    }
    /* Above function working only move ResultScreen
    & received 2 parameter.
    */
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(66, 5, 9, 223),
                Color.fromARGB(255, 145, 3, 189),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenSwitch, // This is Widget
        ),
      ),
    );
  }
}
