import 'dart:io';

void main(List<String> args) {
  List<int> numbers = [];

  for (int i = 0; i < 10; i++) {
    int number = getNumberInput("numbers[$i]: enter a numer");
    numbers.add(number);
  }

  List<int> resultList = hasEvenNum(numbers);

  if (resultList.isEmpty) {
    print('There are no even numbers in the list.');
  } else {
    print('\n');
    for (int number in resultList) {
      print('$number');
    }
  }

}

int getNumberInput(String message) {
  while (true) {
    print(message);
    try {
      String? input = stdin.readLineSync();
      return int.parse(input!);
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  }
}

List<int> hasEvenNum(List<int> userList) {
  List<int> evenList = [];
  for (int number in userList) {
    if (number.isEven) {
      evenList.add(number);
    }
  }
  return evenList;
}
