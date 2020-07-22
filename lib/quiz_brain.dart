import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        'Cyclones spin in a clockwise direction in the southern hemisphere',
        true),
    Question('Goldfish only have a memory of three seconds', false),
    Question('The capital of Libya is Benghazi', false),
    Question(
        'Roger Federer has won the most Wimbledon titles of any player', false),
    Question('An octopus has five hearts', false),
    Question(
        'Brazil is the only country in the Americas to have the official language of \"Portuguese\"',
        true),
    Question(
        'The Channel Tunnel is the longest rail tunnel in the world', false),
    Question('Stephen Hawking declined a knighthood from the Queen', true),
    Question(
        'Charlie Chaplin came first in a Charlie Chaplin look-alike contest',
        false),
    Question('Napoleon was of below-average height', false),
    Question('Donald Duck’s middle name is Fauntelroy', true),
    Question('The Statue of Liberty was a gift from France', true),
    Question(
        'According to Scottish law, it is \"illegal to be drunk\" in charge of a cow',
        true),
    Question('The Great Wall of China is visible from space', false),
    Question('The first tea bags were made of silk', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
