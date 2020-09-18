import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  int finalScore = 0;

  Icon addTrue() => Icon(
        Icons.check,
        color: Colors.green,
      );
  Icon addFalse() => Icon(
        Icons.close,
        color: Colors.red,
      );

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      fontSize: 25.0,
      color: Colors.white,
    );

    void callAlert() {
      setState(() {
        scoreKeeper = [];
        quizBrain.startAgain();
      });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                if (quizBrain.limitNotReached() == true) {
                  setState(() {
                    quizBrain.nextQuestion();
                    if (quizBrain.getCorrectAnswer() == true) {
                      finalScore++;
                      scoreKeeper.add(addTrue());
                    } else {
                      scoreKeeper.add(addFalse());
                    }
                  });
                } else {
                  callAlert();
                }
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                if (quizBrain.limitNotReached() == true) {
                  setState(() {
                    quizBrain.nextQuestion();
                    if (quizBrain.getCorrectAnswer() == false) {
                      finalScore++;
                      scoreKeeper.add(addTrue());
                    } else {
                      scoreKeeper.add(addFalse());
                    }
                  });
                } else {
                  callAlert();
                }
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
