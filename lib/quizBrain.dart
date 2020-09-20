import 'package:day5_s1/Ques.dart';

class QuizBrain {
  int _quesno = 0;
  List<Ques> _quesBank = [
    Ques('The five rings on the Olympic flag are interlocking?', true),
    Ques('Mount Kilimanjaro is the highest mountain in the world?', false),
    Ques('The currency of France is the Franc?', false),
    Ques('A metre is further than a yard?', true),
    Ques('The Channel Tunnel is the longest rail tunnel in the world?', false),
    Ques('An octopus has five hearts?', false),
    Ques('An ostrich\' eye is bigger than its brain?', true),
    Ques('Bats are blind?', false),
    Ques('The collective term of horses is called - gallop of horses?', false),
    Ques('Port Louis is the capital of Mauritius?', true),
    Ques('Polar bears have black skin?', true),
  ];

  void nextQues() {
    if(_quesno < _quesBank.length - 1) {
      _quesno++;
    }
  }

  String getQues () {
    return _quesBank[_quesno].quesText;
  }

  bool getAns() {
    return _quesBank[_quesno].ans;
  }

  bool isDone() {
    if(_quesno >= _quesBank.length - 1) {
      return true;
    }
    else {
      return false;
    }
  }

  void reset() {
    _quesno = 0;
  }

}