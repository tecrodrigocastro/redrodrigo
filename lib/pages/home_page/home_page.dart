import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/home_page/widgets/info_home.dart';
import 'package:redrodrigo/pages/home_page/widgets/key_keyboard.dart';
import 'package:redrodrigo/pages/home_page/widgets/snack_game/snack_game.dart';
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
        children: [
          const InfoHome(),
          Expanded(
              flex: 1,
              child: Center(
                child: Container(
                  width: 510,
                  height: 475,
                  // padding: const EdgeInsets.only(right: 300),
                  //color: primaryColor,
                  decoration: BoxDecoration(
                    //shape: BoxShape.circle,
                    gradient: const SweepGradient(
                      colors: [
                        gradientColorGreen,
                        gradientColorBlue,
                        gradientColorGreen
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: gradientColorGreen.withAlpha(200),
                        blurRadius: 30,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          height: 420,
                          width: 250,
                          color: primaryColor,
                          child: SnackGame(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width: 200,
                                color: secondaryGreenColor.withOpacity(0.5),
                                child: Column(
                                  children: [
                                    const Text('// use keyboard'),
                                    const Text('// arrows to play'),
                                    const SizedBox(height: 8),
                                    const KeyKeyboard(
                                      icon: 'assets/icons/arrow_drop_up.png',
                                    ),
                                    const SizedBox(height: 8),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          KeyKeyboard(
                                            icon:
                                                'assets/icons/arrow_drop_left.png',
                                          ),
                                          KeyKeyboard(
                                              icon:
                                                  'assets/icons/arrow_drop_down.png'),
                                          KeyKeyboard(
                                            icon:
                                                'assets/icons/arrow_drop_rigth.png',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              OutlinedButton(
                                onPressed: () {},
                                child: const Text(
                                  'Skip',
                                  style: TextStyle(color: secondaryWhiteColor),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
