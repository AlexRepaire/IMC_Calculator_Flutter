import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Surpoids';
    }
    if (_bmi > 18.5) {
      return 'Normal';
    }
    return 'Sous-poids';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Vous avez plus que la moyenne, faites plus d\'exercice';
    }
    if (_bmi > 18.5) {
      return 'Vous avez un poids normal, bon travail';
    }
    return 'Vous avez moins que la moyenne, Vous devez manger un peu plus';
  }
}
