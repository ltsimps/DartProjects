import 'dart:io';

import 'dart:math';

enum Pick { rock, paper, scissors }

void main() {
  final rng = Random();

  while (true) {
    stdout.write("Rock, paper, or scissors? (r/p/s) ");

    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      //print('Selected $input');
      var playerMove = null;
      if (input == 'r')
        playerMove = Pick.rock;
      else if (input == 's')
        playerMove = Pick.scissors;
      else if (input == 'p') playerMove = Pick.paper;
      print("player move is $playerMove");
      final AiMove = rng.nextInt(3);
      print("player move is ${Pick.values[AiMove]}");
    } else if (input == 'q')
      break;
    else
      print('You\'ve entered invalid input');
  }
}
