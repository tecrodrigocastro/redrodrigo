import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/home_page/widgets/snack_game/enums.dart';
import 'package:redrodrigo/pages/home_page/widgets/snack_game/widgets/box_area.dart';
import 'package:redrodrigo/pages/home_page/widgets/snack_game/widgets/food_area.dart';
import 'package:redrodrigo/pages/home_page/widgets/snack_game/widgets/snack_area.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class SnackGame extends StatefulWidget {
  const SnackGame({super.key});

  @override
  State<SnackGame> createState() => _SnackGameState();
}

class _SnackGameState extends State<SnackGame> {
  int foodPosition = 200;
  SnakeDirection snakeDirection = SnakeDirection.Down;
  int score = 0;
  bool isGameRunning = false;
  late Timer timer;
  bool _isGameOver = false;

  List<int> snakePosition = [];
  @override
  void initState() {
    super.initState();
    initialiseSnake();
  }

  void initialiseSnake() {
    for (var i = 0; i < 3; i++) {
      snakePosition.add(i);
    }
  }

  void startGame() {
    isGameRunning = true;
    timer = Timer.periodic(Duration(milliseconds: 300), (timer) {
      moveSnake();

      isGameOver();
    });
  }

  void moveSnake() {
    if (snakeDirection == SnakeDirection.Right) {
      if (snakePosition.last % 15 == 14) {
        snakePosition.add(snakePosition.last + 1 - 15);
      } else {
        snakePosition.add(snakePosition.last + 1);
      }
    } else if (snakeDirection == SnakeDirection.Left) {
      if (snakePosition.last % 15 == 0) {
        snakePosition.add(snakePosition.last - 1 + 15);
      } else {
        snakePosition.add(snakePosition.last - 1);
      }
    } else if (snakeDirection == SnakeDirection.Up) {
      if (snakePosition.last < 15) {
        snakePosition.add(snakePosition.last - 15 + 330);
      } else {
        snakePosition.add(snakePosition.last - 15);
      }
    } else if (snakeDirection == SnakeDirection.Down) {
      if (snakePosition.last > 314) {
        snakePosition.add(snakePosition.last + 15 - 330);
      } else {
        snakePosition.add(snakePosition.last + 15);
      }
    }

    if (snakePosition.last == foodPosition) {
      onEatFood();
    } else {
      snakePosition.removeAt(0);
    }

    setState(() {});
  }

  void onEatFood() {
    score++;
    while (snakePosition.contains(foodPosition)) {
      foodPosition = Random().nextInt(329);
    }
  }

  void isGameOver() {
    List<int> duplicateSnakePosition = [];

    duplicateSnakePosition.addAll(snakePosition);

    duplicateSnakePosition.remove(snakePosition.last);

    if (duplicateSnakePosition.contains(snakePosition.last)) {
      print("Game Over");
      timer.cancel();
      _isGameOver = true;
      setState(() {});
    }
  }

  void restartGame() {
    _isGameOver = false;

    score = 0;

    snakePosition = [];

    initialiseSnake();

    startGame();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (dragUpdateDetais) {
        if (dragUpdateDetais.delta.dy > 0) {
          print("Downward");
          snakeDirection = SnakeDirection.Down;
        } else {
          print("Upward");
          snakeDirection = SnakeDirection.Up;
        }

        setState(() {});
      },
      onHorizontalDragUpdate: (drageUpdateDetails) {
        if (drageUpdateDetails.delta.dx > 0) {
          print("Right");
          snakeDirection = SnakeDirection.Right;
        } else {
          print("Left");
          snakeDirection = SnakeDirection.Left;
        }

        setState(() {});
      },
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 375,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 15,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  if (index == foodPosition) {
                    return const FoodArea();
                  } else if (snakePosition.contains(index)) {
                    return const SnakeArea();
                  } else {
                    return BoxArea(
                      index: index,
                    );
                  }
                },
              ),
            ),
            Text('Score: $score'),
            SizedBox(
              height: 15,
            ),
            isGameRunning
                ? SizedBox()
                : ElevatedButton(
                    onPressed: startGame,
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: Text(
                      "Start Game",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
            _isGameOver
                ? ElevatedButton(
                    onPressed: restartGame,
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: Text(
                      "Retry",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
