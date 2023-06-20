import 'dart:math';

import 'package:flutter/rendering.dart';
import 'package:fraction/fraction.dart';

class GeneratedStatementQuestions {
  late String optionA;
  late String optionB;
  late String optionC;
  late String optionD;
  late String correct;

  Random random = Random.secure();

  List<String> names = [
    "Atlas",
    "Hermione",
    "Ron",
    "Harry",
    "Suheil",
    "Samaira",
    "Krisha",
    "Kaashvi",
    "Riyan",
    "Kabir",
    "Utsav",
    "Raghav",
    "Pulkit",
    "Krish",
    "Yash",
    "Rachel",
    "Chandler",
    "Pheobe",
    "Joey",
    "Monica",
    "Ross",
    "Amy",
    "Captain Holt",
    "Vansh",
    "Devansh",
    "Terry",
    "Charles",
    "Hitchcock",
    "Scully",
    "Michael",
    "Trevor",
    "Franklin",
    "Ross",
    "Jake Peralta",
    "Wunch",
    "Penelope",
    "Harry",
    "Piper",
    "Landon",
    "Vinayak",
    "Shruti",
    "Rajesh",
    "Sharanya",
    "Usha",
    "Akshat",
    "Arjun",
    "Adhyan",
    "Pratyush",
    "Yashita"
  ];

  List<String> objectsPlural = [
    "cakes",
    "chocolates",
    "pens",
    "pencils",
    "burgers",
    "watches",
  ];
  List<String> objectsSingular = [
    "cake",
    "chocolate",
    "pen",
    "pencil",
    "burger",
    "watch"
  ];

  List<String> countries = ["India", "Usa", "Mexico", "UK"];

  void updateOptions(String oa, String ob, String oc, String od) {
    optionA = oa;
    optionB = ob;
    optionC = oc;
    optionD = od;
  }

  void randomizeOption(String j, String k, String l, String m) {
    String jk, kl, lm, mn;
    int randomizer = random.nextInt(5);
    if (randomizer == 1) {
      jk = k;
      kl = l;
      lm = m;
      mn = j;
      updateOptions(jk, kl, lm, mn);
    } else if (randomizer == 2) {
      jk = m;
      kl = j;
      lm = k;
      mn = l;
      updateOptions(jk, kl, lm, mn);
    } else if (randomizer == 3) {
      jk = l;
      kl = m;
      lm = j;
      mn = k;
      updateOptions(jk, kl, lm, mn);
    } else {
      jk = j;
      kl = k;
      lm = l;
      mn = m;
      updateOptions(jk, kl, lm, mn);
    }
  }

  void setCorrectOption(String cc) {
    correct = cc;
  }

  String getOptionA() {
    return optionA;
  }

  String getOptionB() {
    return optionB;
  }

  String getOptionC() {
    return optionC;
  }

  String getOptionD() {
    return optionD;
  }

  String getCorrectOption() {
    return correct;
  }

  String greaterorsmaller() {
    int firstNo = random.nextInt(30);
    int secondNo = random.nextInt(15);

    if (secondNo > firstNo || secondNo == firstNo) {
      firstNo = secondNo + 50;
    }
    String co = "$firstNo is greater than $secondNo";
    String wc0 = "$secondNo is greater than $firstNo";
    String wc1 = "$firstNo is equal to $secondNo";
    String wc2 = "None of the listed options";
    randomizeOption(wc0, wc1, wc2, co);
    setCorrectOption(co);

    return "Which is greater $firstNo or $secondNo?";
  }

  String additionproblems() {
    int firstNo = random.nextInt(1000);
    int secondNo = random.nextInt(1000);
    int wrong = random.nextInt(10);

    int co = firstNo + secondNo;
    int wc1 = firstNo + secondNo + wrong;
    int wc2 = firstNo - secondNo;
    int wc0 = firstNo - secondNo + wrong;
    randomizeOption(
        wc1.toString(), wc0.toString(), wc2.toString(), co.toString());
    setCorrectOption(co.toString());

    return "What is the value of $firstNo + $secondNo? ";
  }

  String subtractionproblems() {
    int firstNo = random.nextInt(1000);
    int secondNo = random.nextInt(1000);
    int wrong = random.nextInt(10);
    if (secondNo > firstNo) {
      firstNo = firstNo + 500;
    }

    int wc0 = firstNo + secondNo;
    int wc1 = firstNo - secondNo + wrong;
    int wc2 = firstNo + secondNo + wrong;
    int co = firstNo - secondNo;
    randomizeOption(
        wc1.toString(), wc0.toString(), wc2.toString(), co.toString());
    setCorrectOption(co.toString());

    return "What is the value of $firstNo - $secondNo?";
  }

  String additionwordproblems() {
    int name = random.nextInt(names.length);
    int object = random.nextInt(objectsPlural.length);
    while (name == object) {
      int name = random.nextInt(names.length);
      int object = random.nextInt(objectsPlural.length);
    }

    int randomizer = random.nextInt(9);
    int wrong = random.nextInt(10);
    int firstNo = random.nextInt(1000);
    int secondNo = random.nextInt(1000);

    int co = firstNo + secondNo;
    int wc1 = firstNo + secondNo + wrong;
    int wc2 = firstNo - secondNo;
    int wc0 = firstNo - secondNo + wrong;
    randomizeOption(
        wc1.toString(), wc0.toString(), wc2.toString(), co.toString());
    setCorrectOption(co.toString());

    if (randomizer == 1) {
      return "${names[name]} has $firstNo ${objectsPlural[object]} if you give them $secondNo ${objectsPlural[object]} then how many ${objectsPlural[object]} does ${names[name]} have now? ";
    } else if (randomizer == 2) {
      return "${names[name]} has $firstNo ${objectsPlural[object]} and you have $secondNo ${objectsPlural[object]}, how many ${objectsPlural[object]} do you have in total?";
    } else if (randomizer == 3) {
      "A terrarium holds $firstNo cobras and $secondNo rattlers. How many snakes does the terrarium hold in all?";
    } else if (randomizer == 4) {
      return "${names[name]} is preparing a mocktail and they have $firstNo mangoes and  $secondNo oranges, how many food stuffs do they have in total?";
    } else if (randomizer == 5) {
      "${names[name]} is writing an essay and they have written $firstNo lines and they need to write $secondNo lines more, how many lines does the essay need in total?";
    } else if (randomizer == 6) {
      "${names[name]} is distributing books across two shelves, they have distributed $firstNo books across the first shelf and $secondNo books across the second one, how many more books did they distrbute in total?";
    } else if (randomizer == 7) {
      "${names[name]} bouquet is made of $firstNo white roses  $secondNo red roses, how many roses does it have in total?";
    }
    return "If ${names[name]} has $firstNo ${objectsPlural[object]} and if they are given $secondNo ${objectsPlural[object]} by ${names[object]} then how many ${objectsPlural[object]} does ${names[name]} have now?";
  }

  String subtractionwordproblems() {
    int name = random.nextInt(names.length);
    int object = random.nextInt(objectsPlural.length);
    int randomizer = random.nextInt(9);
    int wrong = random.nextInt(10);
    int firstNo = random.nextInt(1000);
    int secondNo = random.nextInt(1000);

    if (firstNo < secondNo) {
      secondNo = random.nextInt(500);
      firstNo = random.nextInt(500) + 500;
    }

    int wc0 = firstNo + secondNo + wrong;
    int wc1 = firstNo - secondNo - wrong;
    int wc2 = (firstNo + secondNo) - wrong;
    int co = firstNo - secondNo;
    randomizeOption(
        wc1.toString(), wc0.toString(), wc2.toString(), co.toString());
    setCorrectOption(co.toString());

    if (randomizer == 1) {
      return "${names[name]} has $firstNo ${objectsPlural[object]} if you take away $secondNo  ${objectsPlural[object]} then how many ${objectsPlural[object]} does ${names[object]} have left? ";
    } else if (randomizer == 2) {
      return "${names[name]} has $firstNo ${objectsPlural[object]} and you have $secondNo ${objectsPlural[object]}, how many ${objectsPlural[object]} do you have in total?";
    } else if (randomizer == 3) {
      "A terrarium holds $firstNo cobras and rattlers. If you take away $secondNo snakes .How many snakes does the terrarium hold now";
    } else if (randomizer == 4) {
      return "${names[name]} is preparing a mocktail and they have $firstNo mangoes and oranges, how many food stuffs do they have if they eat $secondNo fruits?";
    } else if (randomizer == 5) {
      "${names[name]} is writing an essay and they have written $firstNo lines and they have to remove $secondNo lines, what is the word limit of the essay?";
    } else if (randomizer == 6) {
      "${names[name]} is distributing books across the two shelves, they have distributed $firstNo books across the first shelf and $secondNo books and there is an overflow of $secondNo books, what is the combined capacity of the two shelves?";
    } else if (randomizer == 7) {
      "${names[name]} bouquet is made of $firstNo white roses and red roses, ${names[name]} needs to remove $secondNo roses, how many roses does it have now?";
    }

    return "If ${names[name]} has $firstNo ${objectsPlural[object]} and if they give $secondNo ${objectsPlural[object]} to ${names[name]} then how many ${objectsPlural[object]} does ${names[name]} have left?";
  }

  String multiplicationby0s() {
    int randomizer = random.nextInt(6);
    int firstNumber = random.nextInt(100) + 1;
    late int tenNo;
    int wrong = random.nextInt(10) + 1;
    if (randomizer == 1) {
      tenNo = 10;
    } else if (randomizer == 2) {
      tenNo = 100;
    } else if (randomizer == 3) {
      tenNo = 1000;
    } else if (randomizer == 4) {
      tenNo = 10000;
    } else if (randomizer == 5) {
      tenNo = 100000;
    } else {
      tenNo = 0;
    }
    int wc0 = firstNumber * tenNo + wrong;
    int wc1 = firstNumber * tenNo - wrong;
    double wc2 = tenNo / 10;
    int co = firstNumber * tenNo;
    randomizeOption(
        wc1.toString(), wc0.toString(), wc2.toString(), co.toString());
    setCorrectOption(co.toString());
    return "What is the value of $firstNumber x $tenNo ";
  }

  String multiplicationproblems() {
    int firstNo = random.nextInt(9) + 2;
    int secondNo = random.nextInt(499) + 1;
    int wrong = random.nextInt(9) + 1;
    while (wrong == secondNo) {
      wrong = random.nextInt(10);
    }

    int wc0 = firstNo * secondNo + wrong;
    int co = firstNo * secondNo;
    int wc2 = firstNo * secondNo - wrong;
    int wc1 = firstNo * wrong;
    randomizeOption(
        wc1.toString(), wc0.toString(), wc2.toString(), co.toString());
    setCorrectOption(co.toString());

    return "What is the value of $firstNo x $secondNo? ";
  }

  String multiplicationwordproblems() {
    int firstNo = random.nextInt(9) + 2;
    int secondNo = random.nextInt(499) + 1;
    int wrong = random.nextInt(9) + 1;
    int objects = random.nextInt(objectsPlural.length);
    int name = random.nextInt(names.length);
    while (wrong == secondNo) {
      wrong = random.nextInt(10);
    }
    int randomizer = random.nextInt(5);

    int wc0 = firstNo * secondNo + wrong;
    int co = firstNo * secondNo;
    int wc2 = firstNo * secondNo - wrong;
    int wc1 = firstNo * wrong;
    randomizeOption(
        wc1.toString(), wc0.toString(), wc2.toString(), co.toString());
    setCorrectOption(co.toString());

    if (randomizer == 1) {
      return "The cost of one litre of gas is ${firstNo} rupees, what is the cost of $secondNo litres?";
    } else if (randomizer == 2) {
      return "If the cost of one ${objectsSingular[objects]} is $firstNo, and ${names[name]} wants to buy $secondNo ${objectsPlural[objects]}, what will be the cost?";
    } else if (randomizer == 3) {
      return "${names[name]} travels at speed of $secondNo kilometers per hour for $firstNo hours, what is the total distance travelled? [distance=speed/time]";
    }
    return "If the cost of one ${objectsSingular[objects]} is $firstNo, what is the cost of $secondNo ${objectsPlural[objects]}?";
  }

  String divisionby0s() {
    int randomizer = random.nextInt(5);
    int firstNo = random.nextInt(1000);
    int wrong = random.nextInt(10);
    late int tenNo;
    if (randomizer == 1) {
      tenNo = 10;
    } else if (randomizer == 2) {
      tenNo = 100;
    } else if (randomizer == 3) {
      tenNo = 1000;
    } else if (randomizer == 4) {
      tenNo = 10000;
    } else {
      tenNo = 100000;
    }
    double wc0 = firstNo / tenNo + wrong;
    double co = firstNo / tenNo;
    double wc2 = firstNo / tenNo - wrong;
    double wc1 = firstNo * tenNo.toDouble();
    randomizeOption(
        wc1.toString(), wc0.toString(), wc2.toString(), co.toString());
    setCorrectOption(co.toString());
    return "What is the value of $firstNo divided by $tenNo ";
  }

  String divisionproblems() {
    int divisor = random.nextInt(499) + 1; //divisor
    int quotient = random.nextInt(9) + 1; //quotient
    int dividend = divisor * quotient; //dividend
    int wrong = random.nextInt(10);

    while (wrong == dividend || wrong == divisor || wrong == quotient) {
      wrong = random.nextInt(10);
    }
    double wc0 = dividend / divisor + wrong;
    double wc2 = dividend / divisor - wrong;
    double co = dividend / divisor;
    double wc1 = dividend / wrong;
    randomizeOption(
        wc1.toString(), wc0.toString(), wc2.toString(), co.toString());
    setCorrectOption(co.toString());

    return "What is the value of $dividend divided by $divisor?";
  }

  //speed = distance/ time. //time = distance /time

  String divisionwordproblems() {
    int divisor = random.nextInt(499) + 1; //divisor
    int quotient = random.nextInt(9) + 1; //quotient
    int dividend = divisor * quotient; //dividend
    int wrong = random.nextInt(10);
    int randomizer = random.nextInt(10);
    int objects = random.nextInt(objectsPlural.length);
    int name = random.nextInt(names.length);
    while (wrong == dividend || wrong == divisor || wrong == quotient) {
      wrong = random.nextInt(10);
    }
    double wc0 = dividend / divisor + wrong;
    double wc2 = dividend / divisor - wrong;
    double co = dividend / divisor;
    double wc1 = dividend / wrong;
    randomizeOption(
        wc1.toString(), wc0.toString(), wc2.toString(), co.toString());
    setCorrectOption(co.toString());

    if (randomizer == 1) {
      return "${names[name]} travels a distance of $dividend kilometers in $divisor hours, What is ${names[name]}'s speed? [distance=speed/time]";
    } else if (randomizer == 2) {
      return "${names[name]} travels a distance of $dividend kilometers at a speed of $divisor kilometers per hour, How much time does it take for ${names[name]} to travel that distance? [distance=speed/time]";
    } else if (randomizer == 3) {
      return "${names[name]} buys $dividend litres of diesel for $divisor dollars, What is the cost of one litre of petrol?";
    }
    return "Cost of $dividend ${objectsPlural[objects]} is $divisor, What is the cost of one ${objectsSingular[objects]}?";
  }

  String unitarymethodproblems() {
    int randomizer = random.nextInt(5);
    int name = random.nextInt(names.length);
    int object = random.nextInt(objectsPlural.length);
    int country = random.nextInt(countries.length);
    int divisor = random.nextInt(99) + 1; //speed or time
    int quotient = random.nextInt(24) + 1; //time or speed
    int dividend = divisor * quotient; //distance
    int wrong = random.nextInt(99) + 1;
    int endMutiplicant = random.nextInt(99) + 1; // time or speed

    int wc0 = (divisor * endMutiplicant) + wrong;
    int wc2 = (divisor * endMutiplicant) - wrong;
    int co = divisor * endMutiplicant;
    int wc1 = (divisor * endMutiplicant) + randomizer;
    randomizeOption(
        wc1.toString(), wc0.toString(), wc2.toString(), co.toString());
    setCorrectOption(co.toString());
    if (randomizer == 1) {
      return "${names[name]} is travelling from ${countries[country]} to their home, the distance is $dividend kilometers, and it takes them $quotient hours to get there, find the distance travelled in $endMutiplicant hours [distance=speed/time]";
    } else if (randomizer == 2) {
      return "${names[name]} is travelling from ${countries[country]} to their home, the distance is $dividend kilometers and they are travelling at $quotient kilometers per hour, find the distance travelled if the speed is $endMutiplicant kilometers per hour [distance=speed/time]";
    } else if (randomizer == 3) {
      return "${names[name]} buys $dividend ${objectsPlural[object]} for $quotient rupees, find the cost of buying $endMutiplicant objects?";
    } else if (randomizer == 4) {
      return "${names[name]} buys $dividend litres of petrol for $quotient rupees, find the cost of buying $endMutiplicant litres of petrol";
    }
    return "A freight with $dividend crates weights $quotient kilograms, find the weight of a freight with $endMutiplicant crates ";

    //speed=distance/time, time*speed=distance, time=distance/speed,distance =speed*time
  }

  String additiveinverse() {
    int randomizer = random.nextInt(3);
    int additiveNo = random.nextInt(100000) + 1;
    int wrong = random.nextInt(9) + 1;
    int wc0 = (additiveNo * -1) + wrong;
    int wc2 = (additiveNo * -1) - wrong;
    int co = additiveNo * -1;
    int wc1 = additiveNo;
    randomizeOption(
        wc1.toString(), wc0.toString(), wc2.toString(), co.toString());
    setCorrectOption(co.toString());
    if (randomizer == 1) {
      return "What is the additive inverse of $additiveNo";
    }
    return "What added to $additiveNo will give 0?";
  }

  String primeorcomposite() {
    int number = random.nextInt(10000);
    int randomizer = random.nextInt(4);
    double halfNumber = number / 2;
    bool isPrime = true;
    if (randomizer == 1 || randomizer == 0) {
      number = randomizer;
      String wc0 = "$number is a prime number";
      String wc2 = "$number is a composite number";
      String co = "$number is nor prime nor composite";
      String wc1 = "$number is both prime and composite";
      randomizeOption(wc1, wc2, co, wc0);
      setCorrectOption(co);
    } else {
      for (int i = 2; i <= halfNumber; i++) {
        if (number % i == 0) {
          isPrime = false;
        }
      }
      if (isPrime == true) {
        String co = "$number is a prime number";
        String wc2 = "$number is a composite number";
        String wc0 = "$number is nor prime nor composite";
        String wc1 = "$number is both prime and composite";
        randomizeOption(wc1, wc2, co, wc0);
        setCorrectOption(co);
      } else {
        String wc2 = "$number is a prime number";
        String co = "$number is a composite number";
        String wc0 = "$number is nor prime nor composite";
        String wc1 = "$number is both prime and composite";
        randomizeOption(wc1, wc2, co, wc0);
        setCorrectOption(co);
      }
    }

    return "Is $number a prime number or composite number?";
  }

  String decimaladdition() {
    double randomizer1 = random.nextDouble();
    double randomizer2 = random.nextDouble();
    double randomizer = random.nextDouble();
    double variableA = (random.nextDouble() * 100) + randomizer1;
    double variableB = (random.nextDouble() * 100) + randomizer2;
    double co = variableA + variableB;
    double wc0 = variableA - variableB;
    double wc1 = variableA + randomizer;
    double wc2 = variableB + randomizer;
    randomizeOption(wc1.toStringAsFixed(2), wc2.toStringAsFixed(2),
        co.toStringAsFixed(2), wc0.toStringAsFixed(2));
    setCorrectOption(co.toStringAsFixed(2));

    return "What is the sum of ${variableA.toStringAsFixed(2)} and ${variableB.toStringAsFixed(2)}?";
  }

  String decimalsubtraction() {
    double randomizer1 = random.nextDouble();
    double randomizer2 = random.nextDouble();
    double randomizer = random.nextDouble();
    double variableA = (random.nextDouble() * 100) + randomizer1;
    double variableB = (random.nextDouble() * 100) + randomizer2;
    if (variableA < variableB) {
      variableA += 50;
    }
    double co = variableA - variableB;
    double wc0 = variableA + variableB;
    double wc1 = variableA - randomizer;
    double wc2 = variableB - randomizer;
    randomizeOption(wc1.toStringAsFixed(2), wc2.toStringAsFixed(2),
        co.toStringAsFixed(2), wc0.toStringAsFixed(2));
    setCorrectOption(co.toStringAsFixed(2));

    return "What is the value of ${variableA.toStringAsFixed(2)} - ${variableB.toStringAsFixed(2)}?";
  }

  // String decimalmultiplication() {
  //   double randomizer1 = random.nextDouble();
  //   double randomizer2 = random.nextDouble();
  //   double randomizer = random.nextDouble();
  //   double variableA = (random.nextDouble() * 100);
  //   double variableB = (random.nextDouble() * 25);
  //   double co = variableA * variableB;
  //   double wc0 = variableA / variableB;
  //   double wc1 = variableA * variableB + randomizer;
  //   double wc2 = variableB * variableA - randomizer;
  //   randomizeOption(wc1.toStringAsPrecision(2), wc2.toStringAsPrecision(2),
  //       co.toStringAsPrecision(2), wc0.toStringAsPrecision(2));
  //   setCorrectOption(co.toStringAsPrecision(2));

  //   return "What is the value of ${variableA.toStringAsPrecision(2)} x ${variableB.toStringAsPrecision(2)}?";
  // }

  // String decimaldivision() {
  //   double randomizer1 = random.nextDouble();
  //   double randomizer2 = random.nextDouble();
  //   double randomizer = random.nextDouble();
  //   double divisor = (random.nextDouble() * 100) + randomizer1;
  //   double quotient = (random.nextDouble() * 25) + randomizer2; //quotient
  //   double dividend = divisor * quotient;
  //   double co = divisor;
  //   double wc0 = divisor - randomizer;
  //   double wc1 = divisor + randomizer;
  //   double wc2 = quotient / divisor;
  //   randomizeOption(wc1.toStringAsPrecision(2), wc2.toStringAsPrecision(2),
  //       co.toStringAsPrecision(2), wc0.toStringAsPrecision(2));
  //   setCorrectOption(co.toStringAsPrecision(2));

  //   return "What is the value of ${dividend.toStringAsPrecision(2)} divided by ${quotient.toStringAsPrecision(2)} ?";
  // }

  String simplify() {
    int variableA = random.nextInt(100);
    int variableB = random.nextInt(100);
    int randomizer = random.nextInt(10) + 1;
    final fraction = Fraction(variableA, variableB);
    final fractionW0 = Fraction(variableA + randomizer, variableB + randomizer);
    final fractionW1 = Fraction(variableA, variableB + randomizer);
    final fractionW2 = Fraction(variableA + randomizer, variableB);
    String co = fraction.reduce().toString();
    String wc0 = fractionW0.reduce().toString();
    String wc1 = fractionW1.reduce().toString();
    String wc2 = fractionW2.reduce().toString();
    randomizeOption(wc1, wc2, co, wc0);
    setCorrectOption(co);

    return "Reduce the following to it's simpest form: \n ${fraction.toString()}";
  }

  String reciprocal() {
    int variableA = random.nextInt(100);
    int variableB = random.nextInt(100);
    int randomizer = random.nextInt(10) + 1;

    String co = "$variableB/$variableA";
    String wc0 = "${variableA + randomizer}/$variableB";
    String wc1 = "$variableA/${variableB + randomizer}";
    String wc2 = "${variableA + randomizer}/${variableB + randomizer}";
    randomizeOption(wc1, wc2, co, wc0);
    setCorrectOption(co);
    return "What is the reciprocal of $variableA/$variableB";
  }

  String exponents() {
    int variableA = random.nextInt(20);
    int randomizeSum = random.nextInt(2) + 1;
    if (randomizeSum == 2) {
      String co = "${pow(variableA, 3)}";
      String wc0 = "${pow(variableA + randomizeSum, 3)}";
      String wc1 = "${pow(variableA - randomizeSum, 3)}";
      String wc2 = "${pow(variableA, 3) + randomizeSum}";
      randomizeOption(wc1, wc2, co, wc0);
      setCorrectOption(co);
      return "What is $variableA raised to the power 3?";
    }
    String co = "${pow(variableA, 2)}";
    String wc0 = "${pow(variableA + randomizeSum, 2)}";
    String wc1 = "${pow(variableA - randomizeSum, 2)}";
    String wc2 = "${pow(variableA, 2) + randomizeSum}";
    randomizeOption(wc1, wc2, co, wc0);
    setCorrectOption(co);
    return "What is $variableA raised to the power 2?";
  }

  String roots() {
    int randomizer = random.nextInt(2) + 1;
    if (randomizer == 2) {
      int variableA = random.nextInt(50);
      String co = "$variableA";
      String wc0 = "${variableA + 1}";
      String wc1 = "${variableA - 2}";
      String wc2 = "${variableA - 4}";
      randomizeOption(wc1, wc2, co, wc0);
      setCorrectOption(co);
      return "What is the cube root of ${pow(variableA, 3)}";
    }
    int variableA = random.nextInt(50);
    String co = "$variableA";
    String wc0 = "${variableA + 1}";
    String wc1 = "${variableA - 2}";
    String wc2 = "${variableA - 4}";
    randomizeOption(wc1, wc2, co, wc0);
    setCorrectOption(co);
    return "What is the square root of ${pow(variableA, 2)}";
  }

  String areaandperimetersquare() {
    int side = random.nextInt(50);
    int randomizer = random.nextInt(2);
    if (randomizer == 1) {
      String co = "${pow(side, 2)}";
      String wc0 = "${pow(side, 2) + 1}";
      String wc1 = "${pow(side, 2) - 1}";
      String wc2 = "${pow(side, 2) - 2}";
      randomizeOption(wc1, wc2, co, wc0);
      setCorrectOption(co);
      return "What is the area of a square with side $side cm?";
    }
    String co = "${4 * side}";
    String wc0 = "${4 * side + 1}";
    String wc1 = "${4 * side - 1}";
    String wc2 = "${4 * side + 2}";
    randomizeOption(wc1, wc2, co, wc0);
    setCorrectOption(co);
    return "What is the perimeter of a square with side $side cm?";
  }

  String areaandperimeterrectangle() {
    int length = random.nextInt(50);
    int breadth = random.nextInt(50);
    if (length == breadth) {
      length = length + random.nextInt(100);
    }
    int randomizer = random.nextInt(2);
    if (randomizer == 1) {
      String co = "${length * breadth}";
      String wc0 = "${(length * breadth) + 1}";
      String wc1 = "${(length * breadth) - 1}";
      String wc2 = "${(length * breadth) + 2}";
      randomizeOption(wc1, wc2, co, wc0);
      setCorrectOption(co);

      return "What is the area of a rectangle with length $length cm and breadth $breadth cm?";
    }
    String co = "${2 * (length + breadth)}";
    String wc0 = "${2 * (length + breadth) + 1}";
    String wc1 = "${2 * (length + breadth) - 1}";
    String wc2 = "${2 * (length + breadth) - 4}";
    randomizeOption(wc1, wc2, co, wc0);
    setCorrectOption(co);

    return "What is the perimeter of a rectangle with length $length cm and breadth $breadth cm?";
  }

  String areaandperimetertriangle() {
    int randomizer = random.nextInt(4);
    if (randomizer == 1) {
      int side1 = random.nextInt(50);
      int side2 = random.nextInt(50);
      int side3 = random.nextInt(50);
      String co = "${side1 + side2 + side3}";
      String wc0 = "${side1 + side2 + side3 + 1}";
      String wc1 = "${side1 + side2 + side3 - 1}";
      String wc2 = "${side1 + side2 + side3 + 2}";
      randomizeOption(wc1, wc2, co, wc0);
      setCorrectOption(co);
      return "What is the perimeter of a triangle with the sides $side1 $side2 and $side3";
    } else if (randomizer == 2) {
      int side = random.nextInt(50);
      String co = "${((1.732 / 4) * side * side)}";
      String wc0 = "${((1.732 / 4) * side * side) + 1}";
      String wc1 = "${((1.732 / 4) * side * side) - 1}";
      String wc2 = "${((1.732 / 4) * side * side) + 2}";
      randomizeOption(wc1, wc2, co, wc0);
      setCorrectOption(co);
      return "What is the area of an equilateral triangle with side $side units? [Use underoot 3= 1.732]";
    }
    int height = random.nextInt(50);
    int base = random.nextInt(50);
    String co = "${.5 * base * height}";
    String wc0 = "${(.5 * base * height) + 1}";
    String wc1 = "${(.5 * base * height) - 2}";
    String wc2 = "${(.5 * base * height) - 1}";
    randomizeOption(wc1, wc2, co, wc0);
    setCorrectOption(co);
    return "What is the area of a triangle with base $base units and height $height units?";
  }

  String linearequationssolutions() {
    int variableA = random.nextInt(10);
    int variableB = random.nextInt(10);
    int variableC = random.nextInt(10);
    int variableD = random.nextInt(10);
    int variableE = random.nextInt(10);
    int variableF = random.nextInt(10);
    int equationRandomizer = random.nextInt(13);
    if (equationRandomizer == 1) {
      variableA = -1 * variableA;
    } else if (equationRandomizer == 2) {
      variableB = -1 * variableB;
    } else if (equationRandomizer == 3) {
      variableC = -1 * variableC;
    } else if (equationRandomizer == 4) {
      variableD = -1 * variableD;
    } else if (equationRandomizer == 5) {
      variableE = -1 * variableE;
    } else if (equationRandomizer == 6) {
      variableF = -1 * variableF;
    } else if (equationRandomizer == 7) {
      variableA = -1 * variableA;
      variableD = -1 * variableD;
    } else if (equationRandomizer == 8) {
      variableB = -1 * variableB;
      variableE = -1 * variableE;
    } else if (equationRandomizer == 9) {
      variableC = -1 * variableC;
      variableF = -1 * variableF;
    } else if (equationRandomizer == 10) {
      variableA = -1 * variableA;
      variableE = -1 * variableE;
    } else if (equationRandomizer == 11) {
      variableB = -1 * variableE;
      variableD = -1 * variableD;
    }

    if (variableA / variableD == variableB / variableE &&
        variableB / variableE == variableC / variableF) {
      String co = "This equation has infinite solutions";
      String wc2 = "This equation has no solutions ";
      String wc0 = "This equaiton has one solution";
      String wc1 = "This equation has two solutions";
      randomizeOption(wc1, wc2, co, wc0);
      setCorrectOption(co);
    } else if (variableA / variableD != variableB / variableE) {
      String wc0 = "This equation has infinite solutions";
      String wc2 = "This equation has no solutions ";
      String co = "This equaiton has one solution";
      String wc1 = "This equation has two solutions";
      randomizeOption(wc1, wc2, co, wc0);
      setCorrectOption(co);
    } else if (variableA / variableD == variableB / variableE &&
        variableB / variableE != variableC / variableF) {
      String wc2 = "This equation has infinite solutions";
      String co = "This equation has no solutions ";
      String wc0 = "This equaiton has one solution";
      String wc1 = "This equation has two solutions";
      randomizeOption(wc1, wc2, co, wc0);
      setCorrectOption(co);
    }
    return "How many solutions does the following equation have \n ${variableA}x + ${variableB}y  + $variableC = 0  \n ${variableD}x + ${variableE}y  + $variableF = 0";
  }

  String absolutevalue() {
    int x = random.nextInt(10000);

    String co = "$x";
    String wc0 = "${x - 1}";
    String wc1 = "${x + 1}";
    String wc2 = "${x - 2}";
    x = x * -1;
    randomizeOption(wc1, wc2, co, wc0);
    setCorrectOption(co);
    return "What is the absolute value of |$x|?";
  }

  String call(String identifymethod) {
    if (identifymethod == "additionwordproblems") {
      return additionwordproblems();
    } else if (identifymethod == "subtractionproblems") {
      return subtractionproblems();
    } else if (identifymethod == "subtractionwordproblems") {
      return subtractionwordproblems();
    } else if (identifymethod == "multiplicationproblems") {
      return multiplicationproblems();
    } else if (identifymethod == "divisionproblems") {
      return divisionproblems();
    } else if (identifymethod == "greaterorsmaller") {
      return greaterorsmaller();
    } else if (identifymethod == "unitarymethodproblems") {
      return unitarymethodproblems();
    } else if (identifymethod == "additiveinverse") {
      return additiveinverse();
    } else if (identifymethod == "multiplicationby0s") {
      return multiplicationby0s();
    } else if (identifymethod == "divisionby0s") {
      return divisionby0s();
    } else if (identifymethod == "primeorcomposite") {
      return primeorcomposite();
    } else if (identifymethod == "linearequationssolutions") {
      return linearequationssolutions();
    } else if (identifymethod == "multiplicationwordproblems") {
      return multiplicationwordproblems();
    } else if (identifymethod == "divisionwordproblems") {
      return divisionwordproblems();
    } else if (identifymethod == "decimaladdition") {
      return decimaladdition();
    } else if (identifymethod == "decimalsubtraction") {
      return decimalsubtraction();
    }
    // } else if (identifymethod == "decimalmultiplication") {
    //   return decimalmultiplication();
    // } else if (identifymethod == "decimaldivision") {
    //   return decimaldivision();
    else if (identifymethod == "reciprocal") {
      return reciprocal();
    } else if (identifymethod == "simplify") {
      return simplify();
    } else if (identifymethod == "exponents") {
      return exponents();
    } else if (identifymethod == "roots") {
      return roots();
    } else if (identifymethod == "areaandperimetersquare") {
      return areaandperimetersquare();
    } else if (identifymethod == "areaandperimeterrectangle") {
      return areaandperimeterrectangle();
    } else if (identifymethod == "areaandperimetertriangle") {
      return areaandperimetertriangle();
    } else if (identifymethod == "absolutevalue") {
      return absolutevalue();
    } else {
      return additionproblems();
    }
  }
}
