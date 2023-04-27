import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redrodrigo/shared/enums.dart';

class SnackGameView extends StatefulWidget {
  const SnackGameView({super.key});

  @override
  State<SnackGameView> createState() => _SnackGameViewState();
}

class _SnackGameViewState extends State<SnackGameView> {
  late List<Offset> snake;
  late Offset food;
  final double tileDimension = 20;
  late Direction direction;
  late Offset head;
  late Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    window.onKeyData = (final keyData) {
      if (keyData.logical == LogicalKeyboardKey.arrowRight.keyId) {
        setState(() {
          direction = Direction.right;
        });
      }
      if (keyData.logical == LogicalKeyboardKey.arrowLeft.keyId) {
        setState(() {
          direction = Direction.left;
        });
      }
      if (keyData.logical == LogicalKeyboardKey.arrowUp.keyId) {
        setState(() {
          direction = Direction.up;
        });
      }
      if (keyData.logical == LogicalKeyboardKey.arrowDown.keyId) {
        setState(() {
          direction = Direction.down;
        });
      }
      return false;
    };

    initGame();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void initGame() {
    setState(() {
      snake = [const Offset(5, 5)];
      direction = Direction.right;
    });
    timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        head = snake.last;
        switch (direction) {
          case Direction.up:
            moveSnackToOffset(offset: Offset(head.dx, head.dy - 1));
            break;
          case Direction.down:
            moveSnackToOffset(offset: Offset(head.dx, head.dy + 1));
            break;
          case Direction.left:
            moveSnackToOffset(offset: Offset(head.dx - 1, head.dy));
            break;
          case Direction.right:
            moveSnackToOffset(offset: Offset(head.dx + 1, head.dy));
            break;
        }
        snake.removeAt(0);
      });
    });
  }

  void moveSnackToOffset({required Offset offset}) {
    if (snake.contains(offset)) {
      debugPrint('game over snake crashed');
      return;
    }
    snake.add(offset);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomPaint(
          //size: const Size(250, 420),
          painter: SnakePainter(
            snake,
            tileDimension,
          ),
          //child: SizedBox.fromSize(size: const Size(250, 420)),
        ),
      ),
    );
  }
}

class SnakePainter extends CustomPainter {
  final List<Offset> snake;
  final double tileDimension;

  SnakePainter(this.snake, this.tileDimension);

  @override
  void paint(Canvas canvas, Size size) {
    final snakepaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    for (int i = snake.length - 1; 1 >= 0; i--) {
      Offset offset = snake[i];
      canvas.drawRect(
        Rect.fromLTWH(
          offset.dx * tileDimension,
          offset.dy * tileDimension,
          tileDimension,
          tileDimension,
        ),
        snakepaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
