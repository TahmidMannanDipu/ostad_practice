import 'package:flutter/material.dart';

class CalculateButtons {
  final VoidCallback doAddition;
  final VoidCallback doSubtraction;
  final VoidCallback doMultiple;
  final VoidCallback doDivide;

  CalculateButtons({
    required this.doAddition,
    required this.doSubtraction,
    required this.doMultiple,
    required this.doDivide,
  });

  List<Widget> buildButtons(BuildContext context) {
    return [
      plusButton(context),
      minusButton(context),
      multipleButton(context),
      divideButton(context),
    ];
  }

  Widget plusButton(BuildContext context) {
    return ElevatedButton(
      onPressed: doAddition,
      child: Text(
        "Plus",
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }

  Widget minusButton(BuildContext context) {
    return ElevatedButton(
      onPressed: doSubtraction,
      child: Text(
        "Minus",
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }

  Widget multipleButton(BuildContext context) {
    return ElevatedButton(
      onPressed: doMultiple,
      child: Text(
        "Multiple",
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }

  Widget divideButton(BuildContext context) {
    return ElevatedButton(
      onPressed: doDivide,
      child: Text(
        "Divide",
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }
}