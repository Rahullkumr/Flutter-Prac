import 'question.dart';

class QuizBrain {
  int _qNo = 0;

  List<Question> _questionBank = [
    Question(q: 'Peacock is the National bird of India?', a: true),
    Question(q: 'Mumbai is the capital city of India?', a: false),
    Question(q: 'Full name of ROM is Random Access Memory?', a: false),
    Question(q: 'The tallest building in the world is Burj Khalifa', a: true),
    Question(q: 'WWW is used to connect to the internet?', a: true),
    Question(q: 'Mt. Everest is the highest mountain in the world', a: true),
    Question(
        q: 'Instagram is a mobile social media owned by google?', a: false),
    Question(
        q: 'Data can be a number, a word, a picture, or a sound?', a: true),
    Question(q: 'Hinduism is the main religion in India?', a: true),
    Question(q: 'Facebook is an E-commerce site?', a: false),
    Question(
        q: 'When you delete an object, the window sends it to the recycle bin?',
        a: true),
  ];

void nextQuestion(){
  if(_qNo < _questionBank.length - 1){
    _qNo++;
  }
}
  String getQuestionText() {
    return _questionBank[_qNo].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_qNo].questionAnswer;
  }
}
