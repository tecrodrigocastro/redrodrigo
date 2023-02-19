import 'package:flutter/material.dart';

class SnakeArea extends StatelessWidget {
  const SnakeArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
      ),
    );
  }
}
