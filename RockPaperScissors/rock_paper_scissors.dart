import 'dart:io';

void main() {
  while (true) {
    stdout.write("Rock, paper, or scissors? (r/p/s) ");
    //enum game = {rock, paper, scissors};

    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's')
      print('Selected $input');
    else if (input == 'q')
      break;
    else
      print('You\'ve entered invalid input');
  }
}
