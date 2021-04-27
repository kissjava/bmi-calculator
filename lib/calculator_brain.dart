import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return '超重';
    } else if (_bmi > 18.5) {
      return '正常';
    } else {
      return '偏瘦';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '你的体重比正常人高。多锻炼。';
    } else if (_bmi >= 18.5) {
      return '你的体重正常。非常好！';
    } else {
      return '你的体重低于正常体重。你可以多吃一点。';
    }
  }
}
