import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class BoxArea extends StatelessWidget {
  final int index;
  const BoxArea({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        //borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
