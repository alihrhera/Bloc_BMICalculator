import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
    int height ;
    double weight;
  double _bmi =0.0;

  String calculateBMI (){
    _bmi = weight/pow(height / 100, 2) ;

    return _bmi.toStringAsFixed(1);
  }
  String getResult() {
    print('get result '+ _bmi.toString());
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }

  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than the normal body weight! You need to exercice more...';
    } else if (_bmi >= 18.5) {
      return 'You\'ve got a normal body weight! Good Job!';
    } else {
      return 'you have a lower than the normal body weight! You\'d be eating more...';
    }
  }


}