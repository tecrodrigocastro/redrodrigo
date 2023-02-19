import 'package:flutter/material.dart';

class FoodArea extends StatelessWidget {
  const FoodArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
        // borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
