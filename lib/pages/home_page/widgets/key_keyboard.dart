import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class KeyKeyboard extends StatelessWidget {
  const KeyKeyboard({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 45,
      decoration: const BoxDecoration(
        color: primaryColorDarker,
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      child: Image.asset(
        icon,
        width: 10,
        height: 10,
      ),
    );
  }
}
