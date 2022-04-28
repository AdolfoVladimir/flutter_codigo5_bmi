import 'dart:math';

class BMIBrain {
  int height;
  int weight;
  double bmi = 0;
  BMIBrain({
    required this.weight,
    required this.height,
  });
  calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  String getResult() {
    if (calculateBMI() >= 25) {
      return "Gordito";
    } else if (calculateBMI() > 18) {
      return "Normal";
    } else {
      return "Flaco";
    }
  }
  String getInterpretation() {
    if (calculateBMI() >= 25) {
      return "trata de hacer ejercicos y comer sano";
    } else if (calculateBMI() > 18) {
      return "Felicitaciones";
    } else {
      return "¡Debes de comer mas!";
    }
  }
}
