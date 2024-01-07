import 'dart:io';

void main() {
  print("Solution 1");

  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var i = 1; i < 11; i++) {
    if (i % 2 == 0) {
      print('$i is an even number');
    }
  }
  print('Solution 2');

  for (var i = 0; i < 10; i++) {
    print(fibonacci(i));
  }

  print('Solution 3');
  print('Enter your number');
  int i = int.parse(stdin.readLineSync()!);
  bool isPrime = checkPrimeNumber(i);
  if (isPrime == true) {
    print('Prime number');
  } else {
    print('Not a prime number');
  }

  print('Solution 4');
  List numlist = [1, 2, 3, 499, 5, 6, 55];
  var largenum = numlist[0];

  for (var i = 0; i < numlist.length; i++) {
    if (numlist[i] > largenum) {
      largenum = numlist[i];
    }
  }
  print('largest number is: $largenum');

  print('Solution 5');
  String str = 'noon';
  String reversed = str.split('').reversed.join('');
  if (str == reversed) {
    print('Palindrome');
  } else {
    print('Not a Palindrome');
  }

  print('Solution 6');
  int numberOfRows = 4;
  for (int i = 1; i <= numberOfRows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('$i ');
    }
    print('');
  }

  print('Solution 7');
  List number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int i = 0; i < number.length; i++) {
    if (number[i] > 5) {
      print('${number[i]} number is greater than 5');
    }
  }
  print('Solution 8');
  List vowels = ['a', 'e', 'i', 'o', 'u'];
  print('Enter your string');
  String input = stdin.readLineSync()!;

  int vowelCount = 0;
  for (var i = 0; i < input.length; i++) {
    if (vowels.contains(input[i])) {
      vowelCount++;
    }
  }
  print('Number of vovels $vowelCount');

  print('Solution 09');

  List myList = [87, 133, 146, 178, 23, 43, 245, 33, 2];

  var maxValue = myList[0];
  var minValue = myList[0];

  for (int i = 0; i < myList.length; i++) {
    if (myList[i] > maxValue) {
      maxValue = myList[i];
    }
    if (myList[i] < minValue) {
      minValue = myList[i];
    }
  }
  print("Maximum value in the list : $maxValue");
  print("Minimum value in the list : $minValue");

  print('Solution 10');
  List<int> numbersList = [1, 2, 3, 4, 5];
  int sum = 0;
  for (var i = 0; i < numbersList.length; i++) {
    if (numbersList[i] % 2 != 0) {
      sum = sum + (numbersList[i] * numbersList[i]);
    }
  }
  print('sum of all the squares of odd numbers $sum');

  print('Solution 11');

  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'ALI',
      'marks': [80, 75, 90],
      'section': 'A',
      'rollNumber': 101
    },
    {
      'name': 'AYESHA',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 102
    },
    {
      'name': 'SAAD',
      'marks': [70, 65, 75],
      'section': 'A',
      'rollNumber': 103
    },
  ];

  for (var student in studentDetails) {
    String name = student['name'];
    List<int> marks = student['marks'];
    double percentage = 0.0;
    double sumOfAllMarks = 0.0;
    for (var i = 0; i < marks.length; i++) {
      sumOfAllMarks = sumOfAllMarks + marks[i];
    }

    percentage = (sumOfAllMarks / 300) * 100;

    String grade = getGrade(percentage);

    print('$name - Grade: $grade');
  }
}

String getGrade(double percentage) {
  if (percentage >= 90) {
    return 'A+';
  } else if (percentage >= 80) {
    return 'A';
  } else if (percentage >= 70) {
    return 'B';
  } else if (percentage >= 60) {
    return 'C';
  } else {
    return 'F';
  }
}

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return (n);
  }
  return (fibonacci(n - 1) + fibonacci(n - 2));
}

bool checkPrimeNumber(int num) {
  for (var i = 2; i <= num / i; ++i) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
