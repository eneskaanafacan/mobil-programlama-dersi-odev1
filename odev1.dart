import 'dart:io';

void main(List<String> args) {
  Calculator calculator = Calculator();
  double? input1 = getNumberInput('Enter the first number:');
  String? operation = getOperationInput();
  double? input2 = getNumberInput('Enter the second number:');

  switch (operation) {
    case '+':
      print('$input1 + $input2 = ${calculator.add(input1!, input2!)}');
      break;
    case '-':
      print('$input1 - $input2 = ${calculator.subtract(input1!, input2!)}');
      break;
    case '*':
      print('$input1 * $input2 = ${calculator.multiply(input1!, input2!)}');
      break;
    case '/':
      print('$input1 / $input2 = ${calculator.divide(input1!, input2!)}');
      break;
    default:
      print('Invalid operation selected. Try again');
  }
}

class Calculator {
  double add(double num1, double num2) => num1 + num2;
  double subtract(double num1, double num2) => num1 - num2;
  double multiply(double num1, double num2) => num1 * num2;
  double divide(double num1, double num2) => num1 / num2;
}

bool isInputExit(String input) {
  return input.trim().toLowerCase() == 'exit' ? true : false;
}

String? getOperationInput() {
  while (true) {
    print('Enter the operation type (+, -, *, /)');
    String? input = stdin.readLineSync();
    if (isInputExit(input!)) {
      print('Calculator turned off');
      exit(0);
    }
    if (input == '+' || input == '-' || input == '*' || input == '/') {
      return input;
    } else {
      print('Invalid operation. Please enter one of +, -, *, /.');
    }
  }
}

double? getNumberInput(String message) {
  while (true) {
    print(message);
    try {
      String? input = stdin.readLineSync();
      if (isInputExit(input!)) {
        print('Calculator turned off');
        exit(0);
      }
      return double.parse(input);
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  }
}
