import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ComSci Quiz',
      home: ComSciQuiz(title: 'How much do you know ComSci?'),
    );
  }
}

class ComSciQuiz extends StatefulWidget {
  ComSciQuiz({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ComSciQuizState createState() => _ComSciQuizState();
}

class _ComSciQuizState extends State<ComSciQuiz> {
  int questionIndex = 0;
  int choiceionIndex = 0;
  int totalScore = 0;

  final _questions = const [
    {
      'questionText': "สาขาที่นักศึกษาชอบเรียน?",
      'choices': ["วิทยาการคอมพิวเตอร์", "เทคโนโลยีสารสนเทศ", "ComSci", "IT"],
      'scores': [10, 10, 9, 8]
    },
    {
      'questionText': "ภาษาโปรแกรมที่ชอบ?",
      'choices': ["Java", "Phyton", "Dart", "C#"],
      'scores': [10, 10, 9, 8]
    },
    {
      'questionText': "เกรดที่ชอบ?",
      'choices': ["A", "B", "C", "D"],
      'scores': [10, 10, 9, 8]
    },
  ];
  void _answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
      if (questionIndex >= _questions.length) {
        questionIndex = 0;
      }
      print("Question: $questionIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Question(_questions[questionIndex]['questionText']),
            Answer(_answerQuestion, _questions[questionIndex]['choices'], 0),
            Answer(_answerQuestion, _questions[questionIndex]['choices'], 1),
            Answer(_answerQuestion, _questions[questionIndex]['choices'], 2),
            Answer(_answerQuestion, _questions[questionIndex]['choices'], 3),
          ],
        ),
      ),
    );
  }
}
