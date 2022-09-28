import 'questions.dart';

class QuizBrain {
  static int _a = 0;

  static List<Questions> _questionBank = [
    Questions(
        QuestionA: 'Some cats are actually allergic to humans', Ans: true),
    Questions(
        QuestionA: 'You can lead a cow down stairs but not up stairs.',
        Ans: true),
    Questions(
        QuestionA: 'Approximately one quarter of human bones are in the feet.',
        Ans: true),
    Questions(QuestionA: 'A slug\'s blood is green.', Ans: true),
    Questions(
        QuestionA: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        Ans: true),
    Questions(
        QuestionA: 'It is illegal to pee in the Ocean in Portugal.', Ans: true),
    Questions(
        QuestionA:
            'No piece of square dry paper can be folded in half more than 7 times.',
        Ans: false),
    Questions(
        QuestionA:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        Ans: true),
    Questions(
        QuestionA:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        Ans: false),
    Questions(
        QuestionA:
            'The total surface area of two human lungs is approximately 70 square metres.',
        Ans: true),
    Questions(
        QuestionA: 'Google was originally called \"Backrub\".', Ans: true),
    Questions(
        QuestionA:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        Ans: true),
    Questions(
        QuestionA:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        Ans: true),
  ];
  static void questioninc() {
    if (_a < _questionBank.length - 1) {
      _a++;
    }
  }

  static String getQuestion() {
    return _questionBank[_a].QuestionA;
  }

  static bool getAns() {
    return _questionBank[_a].Ans;
  }
}
