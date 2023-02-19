import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class TabElement extends StatelessWidget {
  const TabElement({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: DecoratedBox(
        decoration: const BoxDecoration(
            border: Border(
          left: BorderSide(
            color: primaryColorLight,
          ),
        )),
        child: Tab(
          height: 42,
          text: title,
        ),
      ),
    );
  }
}
