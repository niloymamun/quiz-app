import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestion('What are the main building blocks of Flutter UIs?', [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ]),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion('What\'s the purpose of a StatefulWidget?', [
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data',
  ]),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion('What happens if you change data in a StatelessWidget?', [
    'The UI is not updated',
    'The UI is updated',
    'The closest StatefulWidget is updated',
    'Any nested StatefulWidgets are updated',
  ]),
  QuizQuestion('How should you update data inside of StatefulWidgets?', [
    'By calling setState()',
    'By calling updateData()',
    'By calling updateUI()',
    'By calling updateState()',
  ]),
  QuizQuestion('What is Dart programming language?', [
    'mobile app development',
    ' web development',
    ' game development',
    ' database management',
  ]),
  QuizQuestion(
    'Which of the following is not a feature of Dart programming language?',
    [
      'Multithreading',
      'Asynchronous programming support',
      'Garbage collection',
      'Functional programming support',
    ],
  ),

  QuizQuestion(
    'Which of the following is the correct syntax for defining a variable in Dart?',
    ['var x = 5', 'x = 5', 'int x = 5', 'variable x = 5'],
  ),
  QuizQuestion('What is the purpose of the “final” keyword in Dart?', [
    ' cannot be changed after its initial assignment',
    'To define a constant variable',
    ' can only be accessed within its scope',
    'can be accessed from any scope',
  ]),
  QuizQuestion(
    'Which of the following is the correct syntax for defining a function in Dart?',
    [' void foo() {}', 'function foo() {}', 'int foo() {}', 'dynamic foo() {}'],
  ),
  QuizQuestion(
    'Which of the following operators is used for null-aware access in Dart?',
    ['?', '==', '!=', '!!'],
  ),
];
