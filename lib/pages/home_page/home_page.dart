import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/home_page/widgets/info_home.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      width: double.infinity,
      height: double.infinity,
      child: Row(
        children: const [
          InfoHome(),
        ],
      ),
    );
  }
}
