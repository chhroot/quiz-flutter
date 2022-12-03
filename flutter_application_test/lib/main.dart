import 'package:flutter/material.dart';
import 'package:flutter_application_test/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Which group would you join in Middle Earth ?',
      'answers': [
        {'text': 'Dwarves', 'score': 10},
        {'text': 'Elves', 'score': 30},
        {'text': 'Orcs', 'score': 5},
        {'text': 'Trolls', 'score': 3},
      ],
    },
    {
      'questionText':
          'You met Villentretenmerth on your journey, what will you do ?',
      'answers': [
        {'text': 'Slay the Beast', 'score': 10},
        {'text': 'Ask him about Saesenthesis', 'score': 30},
        {'text': 'Join the jackdaws', 'score': 20},
        {'text': 'Speak The Three Blackbirds', 'score': 5},
      ],
    },
    {
      'questionText': 'You have a battle with Grindlewald, Choose your weapon',
      'answers': [
        {'text': 'The Elder Wand', 'score': 10},
        {'text': 'A M14', 'score': 5},
        {'text': 'Call Dumbledore', 'score': 30},
        {'text': 'Summon Fawkes', 'score': 20},
      ],
    },
    {
      'questionText': 'Baggins the Hobbit, loved which of the following ?',
      'answers': [
        {'text': 'Nutmeg Shortbread', 'score': 10},
        {'text': 'Dirty Potatoes', 'score': 5},
        {'text': 'Honey Tea Cake', 'score': 30},
        {'text': 'Roasted Wild Mushrooms', 'score': 20},
      ],
    },
    {
      'questionText': 'You are asked to assassinate Ulfric, you will',
      'answers': [
        {'text': 'Sink a Greatsword through his heart', 'score': 10},
        {'text': 'Call Alduin', 'score': 5},
        {'text': 'Summon the Dragonborn', 'score': 30},
        {'text': 'Steal his Sweetroll', 'score': 20},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    print("Question Index");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.green,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
