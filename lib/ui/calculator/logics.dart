import 'package:flutter/material.dart';

class CalculatorLogic {
  int doAddition(int num1, int num2) {
    return num1 + num2;
  }

  int doSubtraction(int num1, int num2) {
    return num1 - num2;
  }

  int doMultiple(int num1, int num2) {
    return num1 * num2;
  }

  int doDivide(int num1, int num2) {
    if (num2 == 0) return 0;
    return num1 ~/ num2;
  }
}
