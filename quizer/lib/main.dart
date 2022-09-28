import 'package:flutter/material.dart';
import 'quiz_brain.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
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
  // List<Questions> questionbank = [
  //   Questions(
  //       QuestionA: 'You can lead a cow down stairs but not up stairs.',
  //       Ans: false),
  //   Questions(
  //       QuestionA: 'Approximately one quarter of human bones are in the feet.',
  //       Ans: true),
  //   Questions(QuestionA: 'A slug\'s blood is green.', Ans: true)
  // ];
  List<Icon> scorekeeper = [];
  // List<String> questions = [
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.',
  // ];
  // List<bool> answers = [false, true, true];
  // Questions s1 = Questions(
  //     a: 'You can lead a cow down stairs but not up stairs.', b: false);
  @override
  Widget build(BuildContext context) {
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
                QuizBrain.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              // textColor: Colors.white,
              // color: Colors.green,
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(
                  () {
                    bool cans = QuizBrain.getAns();
                    if (cans == true) {
                      scorekeeper.add(
                        const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );
                    } else {
                      scorekeeper.add(
                        const Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      );
                    }
                    QuizBrain.questioninc();
                  },
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              // color: Colors.red,
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(
                  () {
                    bool ans = QuizBrain.getAns();
                    if (ans == true) {
                      scorekeeper.add(
                        const Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      );
                    } else {
                      scorekeeper.add(
                        const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );
                    }
                    QuizBrain.questioninc();
                  },
                );
              },
            ),
          ),
        ),
        Row(children: scorekeeper)
      ],
    );
  }
}
