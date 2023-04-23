import 'package:flutter/material.dart';
import 'package:calculator_mobile/UI/button.dart';
import 'package:calculator_mobile/Utilities/constants.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String firstRowText = "0";
  String secondRowText = "0";
  double firstOperand = 0.0;
  double secondOperand = 0.0;
  String operand = "";
  String history = "";
  // update the display
  void updateDisplay(String buttonText) {
    setState(() {
      if (history.contains("=")) {
        history = "";
      }
      if (buttonText == "." && secondRowText.contains(".")) {
        return;
      }
      history += buttonText;
      if (secondRowText == "0") {
        secondRowText = buttonText;
        return;
      }
      if (operands.contains(buttonText)) {
        operand = buttonText;
        firstOperand = double.parse(secondRowText);
        return;
      }
      if (buttonText == "=") {
        secondRowText = (firstOperand + double.parse(secondRowText)).toString();
        firstRowText = "0";
        history += secondRowText;
        return;
      }
      secondRowText += buttonText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Calculator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Container(
                height: 100,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Text(
                  history,
                  style: TextStyle(fontSize: 38, color: Colors.white54),
                ),
              ),
              Container(
                height: 100,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Text(
                  firstRowText,
                  style: TextStyle(fontSize: 38, color: Colors.white54),
                ),
              ),
              Container(
                height: 100,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Text(
                  secondRowText,
                  style: TextStyle(fontSize: 38, color: Colors.white),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Button(
                        btnText: "7",
                        onPressed: () {
                          updateDisplay("7");
                        }),
                    Button(
                        btnText: "8",
                        onPressed: () {
                          updateDisplay("8");
                        }),
                    Button(
                        btnText: "9",
                        onPressed: () {
                          updateDisplay("9");
                        }),
                    Button(
                        btnText: "/",
                        onPressed: () {
                          updateDisplay("/");
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                        btnText: "4",
                        onPressed: () {
                          updateDisplay("4");
                        }),
                    Button(
                        btnText: "5",
                        onPressed: () {
                          updateDisplay("5");
                        }),
                    Button(
                        btnText: "6",
                        onPressed: () {
                          updateDisplay("6");
                        }),
                    Button(
                        btnText: "*",
                        onPressed: () {
                          updateDisplay("*");
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                        btnText: "1",
                        onPressed: () {
                          updateDisplay("1");
                        }),
                    Button(
                        btnText: "2",
                        onPressed: () {
                          updateDisplay("2");
                        }),
                    Button(
                        btnText: "3",
                        onPressed: () {
                          updateDisplay("3");
                        }),
                    Button(
                        btnText: "-",
                        onPressed: () {
                          updateDisplay("-");
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                        btnText: ".",
                        onPressed: () {
                          updateDisplay(".");
                        }),
                    Button(
                        btnText: "0",
                        onPressed: () {
                          updateDisplay("0");
                        }),
                    Button(
                        btnText: "00",
                        onPressed: () {
                          updateDisplay("00");
                        }),
                    Button(
                        btnText: "+",
                        onPressed: () {
                          updateDisplay("+");
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                        btnText: "CLEAR",
                        onPressed: () {
                          updateDisplay("CLEAR");
                        }),
                    Button(
                        btnText: "=",
                        onPressed: () {
                          updateDisplay("=");
                        }),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: null,
          )
        ],
      ),
    );
  }
}
