import 'dart:io';

import 'dart:math';

enum Pick { rock, paper, scissors }
var aiWinCount = 0;
var playerWinCount = 0;
var drawCount = 0;

void winCondition(Pick playerPick, Pick aiPick) {
  var convertPlayerPick = playerPick;
//  /// switch (playerPick) {
//     case 'r':
//       convertPlayerPick = Pick.rock;
//       break;
//     case 'p':
//       convertPlayerPick = Pick.paper;
//       break;
//     case 's':
//       convertPlayerPick = Pick.scissors;
//       break;
//   }
  //no checking logic

  if (aiPick == convertPlayerPick) {
    print("draw");
    drawCount++;
  } else if (aiPick == Pick.paper && convertPlayerPick == Pick.rock) {
    print("Ai Wins");
    aiWinCount++;
  } else if (aiPick == Pick.paper && convertPlayerPick == Pick.scissors) {
    print("Human Wins");
    playerWinCount++;
  } else if (aiPick == Pick.rock && convertPlayerPick == Pick.scissors) {
    print("AI Wins");
    aiWinCount++;
  } else if (aiPick == Pick.rock && convertPlayerPick == Pick.paper) {
    print("Human Wins");
    playerWinCount++;
  } else if (aiPick == Pick.scissors && convertPlayerPick == Pick.rock) {
    print("Human Wins");
    playerWinCount++;
  } else if (aiPick == Pick.scissors && convertPlayerPick == Pick.paper) {
    print("Ai Wins");
    aiWinCount++;
  }

  print(
      "AI🤖 win count $aiWinCount |  Human 👨 win count  $playerWinCount    | Draw count $drawCount");
}

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
      print("👨 move is $playerMove");
      final aiMove = rng.nextInt(3);
      print("🤖  move is ${Pick.values[aiMove]}");
      winCondition(playerMove, Pick.values[aiMove]);
    } else if (input == 'q')
      break;
    else
      print('You\'ve entered invalid input');
  }
}
