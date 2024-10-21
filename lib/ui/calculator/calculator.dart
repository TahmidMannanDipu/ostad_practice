import 'package:flutter/material.dart';
import 'calculate_buttons.dart';
import 'logics.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final CalculatorLogic calculator = CalculatorLogic();

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  int ans = 0;

  void doAddition() {
    setState(() {
      int num1 = int.tryParse(t1.text) ?? 0;
      int num2 = int.tryParse(t2.text) ?? 0;
      ans = calculator.doAddition(num1, num2);
    });
  }

  void doSubtraction() {
    setState(() {
      int num1 = int.tryParse(t1.text) ?? 0;
      int num2 = int.tryParse(t2.text) ?? 0;
      ans = calculator.doSubtraction(num1, num2);
    });
  }

  void doMultiple() {
    setState(() {
      int num1 = int.tryParse(t1.text) ?? 0;
      int num2 = int.tryParse(t2.text) ?? 0;
      ans = calculator.doMultiple(num1, num2);
    });
  }

  void doDivide() {
    setState(() {
      int num1 = int.tryParse(t1.text) ?? 0;
      int num2 = int.tryParse(t2.text) ?? 1; // Prevent division by zero
      ans = calculator.doDivide(num1, num2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Calculator",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.black54),
                decoration: const InputDecoration(
                  hintText: "Enter value 1",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                controller: t1,
              ),
              const SizedBox(height: 42),
              TextFormField(
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.black54),
                decoration: const InputDecoration(
                  hintText: "Enter value 2",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                controller: t2,
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: CalculateButtons(
                  doAddition: doAddition,
                  doSubtraction: doSubtraction,
                  doMultiple: doMultiple,
                  doDivide: doDivide,
                ).buildButtons(context),
              ),
              const SizedBox(height: 20),
              Text(
                "Result: $ans",
                style: TextStyle(fontSize: 32, color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
