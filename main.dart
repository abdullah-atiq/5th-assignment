import 'dart:io';

void main() {
  outerloop:
  while (true) {
    stdout.writeln('\nTemperature');
    stdout.writeln('Length');
    stdout.writeln('Time\n');
    stdout.writeln('Select your converter');
    String? selection = stdin.readLineSync()!.toLowerCase();
    if (selection != 'temperature' &&
        selection != 'length' &&
        selection != 'time') {
      print('invalid input');
    } else {
      if (selection == 'temperature') {
        tempconversion();
      } else if (selection == 'length') {
        lengthConversion();
      } else if (selection == 'time') {
        timeConversion();
      }
    }
    stdout.writeln('do you want to access the converter again');
    stdout.writeln('yes');
    stdout.writeln('no');
    String? continuation = stdin.readLineSync()!.toLowerCase();
    while (true) {
      if (continuation != 'no' && continuation != 'yes') {
        print('please enter a valid response');
      } else {
        if (continuation == 'no') {
          print('Thank you for using'.toUpperCase());
          break outerloop;
        } else {
          break;
        }
      }
    }
  }
}

void lengthConversion() {
  outerloop:
  while (true) {
    stdout.writeln("Press '1' for Meter to Kilometer");
    stdout.writeln("Press '2' for Kilometer to Meter");
    stdout.writeln("Press '3' for feet to Inches");
    stdout.writeln("Press '4' for Inches to feet");
    stdout.writeln("Press '5' for Centimeter to Meter");
    stdout.writeln("Press '6' for Meter to Centimeter");

    String str1 = stdin.readLineSync()!;
    int int1 = int.tryParse(str1) ?? -1;
    if (int1 > 6 || int1 < 0) {
      print('not a valid number');
    } else {
      stdout.writeln('Enter your length for conversion');
      String str2 = stdin.readLineSync()!;
      num int2 = num.tryParse(str2) ?? 0;

      if (int1 == 1) {
        int2 /= 1000;
        print('$int2 kilometers\n');
      } else if (int1 == 2) {
        int2 *= 1000;
        print('$int2 meters\n');
      } else if (int1 == 3) {
        int2 *= 12;
        print('$int2 inches\n');
      } else if (int1 == 4) {
        int2 /= 12;
        print('$int2 feet\n');
      } else if (int1 == 5) {
        int2 /= 100;
        print('$int2 meters\n');
      } else if (int1 == 6) {
        int2 *= 100;
        print('$int2 centimeters\n');
      }

      if (int2 == 0) {
        print('\nnot a valid response\n');
      }
      while (true) {
        stdout.writeln('do you want to continue');
        stdout.writeln('yes');
        stdout.writeln('no');
        String? str1 = stdin.readLineSync()!.toLowerCase();

        if (str1 != 'no' && str1 != 'yes') {
          print('please enter a valid response\n');
        } else {
          if (str1 == 'no') {
            break outerloop;
          } else if (str1 == 'yes') {
            break;
          }
        }
      }
    }
  }
}

void timeConversion() {
  outerloop:
  while (true) {
    stdout.writeln("Press '1' for Seconds to Minutes");
    stdout.writeln("Press '2' for Minutes to Seconds");
    stdout.writeln("Press '3' for Minutes to Hours");
    stdout.writeln("Press '4' for Seconds to Hours");
    stdout.writeln("Press '5' for Milliseconds to Minutes");
    stdout.writeln("Press '6' for Milliseconds to Hours");

    String str1 = stdin.readLineSync()!;
    int int1 = int.tryParse(str1) ?? -1;

    if (int1 > 6 || int1 < 0) {
      print('not a valid number');
    } else {
      stdout.writeln('Enter your time for conversion');
      String str2 = stdin.readLineSync()!;
      num int2 = num.tryParse(str2) ?? 0;

      if (int1 == 1) {
        int2 /= 60;
        print('$int2 minutes\n');
      } else if (int1 == 2) {
        int2 *= 60;
        print('$int2 seconds\n');
      } else if (int1 == 3) {
        int2 /= 60;
        print('$int2 hours\n');
      } else if (int1 == 4) {
        int2 /= 3600;
        print('$int2 hours\n');
      } else if (int1 == 5) {
        int2 /= 60000;
        print('$int2 minutes\n');
      } else if (int1 == 6) {
        int2 /= 3600000;
        print('$int2 hours');
      }
      if (int2 == 0) {
        print('\nnot a valid response\n');
      }
      while (true) {
        stdout.writeln('do you want to continue');
        stdout.writeln('yes');
        stdout.writeln('no');
        String? str1 = stdin.readLineSync()!.toLowerCase();

        if (str1 != 'no' && str1 != 'yes') {
          print('please enter a valid response\n');
        } else {
          if (str1 == 'no') {
            break outerloop;
          } else if (str1 == 'yes') {
            break;
          }
        }
      }
    }
  }
}

void tempconversion() {
  outerloop:
  while (true) {
    stdout.writeln("Press '1' for celcius to farenheit");
    stdout.writeln("Press '2' for farenheit to celcius");

    String str1 = stdin.readLineSync()!;
    int int1 = int.tryParse(str1) ?? -1;

    if (int1 > 2 || int1 < 0) {
      print('not a valid number');
    } else {
      stdout.writeln('Enter your temperature for conversion');
      String str2 = stdin.readLineSync()!;
      num int2 = num.tryParse(str2) ?? 0;

      if (int1 == 1) {
        int2 = (int2 - 32) * 5 / 9;
        print('$int2 Celsius\n');
      } else if (int1 == 2) {
        int2 = int2 * 9 / 5 + 32;
        print('$int2 Fahrenheit\n');
      }
      if (int2 == 0) {
        print('\nnot a valid response\n');
      }
      while (true) {
        stdout.writeln('do you want to continue');
        stdout.writeln('yes');
        stdout.writeln('no');
        String? str1 = stdin.readLineSync()!.toLowerCase();

        if (str1 != 'no' && str1 != 'yes') {
          print('\nplease enter a valid response\n');
        } else {
          if (str1 == 'no') {
            break outerloop;
          } else if (str1 == 'yes') {
            break;
          }
        }
      }
    }
  }
}
