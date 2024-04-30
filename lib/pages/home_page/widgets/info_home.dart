import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/constants/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class InfoHome extends StatelessWidget {
  const InfoHome({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    bool isMobile(BuildContext context) => currentWidth < 800;

    return Padding(
      padding: isMobile(context)
          ? const EdgeInsets.all(20)
          : const EdgeInsets.only(left: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.waving_hand_outlined,
                color: secondaryBlueColor,
                size: 32,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Olá a todos, eu sou o:',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: primaryColorLight,
                    ),
              ),
            ],
          ),
          /*   Text(
            'Rodrigo Castro',
            style: Theme.of(context).textTheme.displayLarge,
          ), */
          RichText(
            text: TextSpan(
              text: 'RED RODRIGO\n',
              style: Theme.of(context).textTheme.displayLarge,
              children: [
                TextSpan(
                  text: '(Rodrigo Castro)',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '> Software Developer\n  Laravel and Flutter',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: secondaryBlueColor),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            '// site desenvolvido em flutter!:)',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: secondaryGreyColor),
          ),
          Text(
            '// visite meu github',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: secondaryGreyColor),
          ),
          RichText(
            text: TextSpan(
              text: 'const  ',
              style: const TextStyle(color: secondaryBlueColor),
              children: [
                const TextSpan(
                  text: 'githubLink  ',
                  style: TextStyle(color: accentGreenColor),
                ),
                const TextSpan(
                  text: '=  ',
                  style: TextStyle(color: secondaryWhiteColor),
                ),
                TextSpan(
                  text: '"https://github.com/tecrodrigocastro"',
                  onEnter: (event) => launchUrlString(githubLink),
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  style: const TextStyle(
                    color: accentOrangeColor,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const TextSpan(
                  text: ';',
                  style: TextStyle(color: secondaryWhiteColor),
                ),
              ],
            ),
          ),
/*           Row(
            children: [
              const Text(
                'const',
                style: TextStyle(color: secondaryBlueColor),
              ),
              const SizedBox(width: 8),
              const Text(
                'githubLink',
                style: TextStyle(color: accentGreenColor),
              ),
              const SizedBox(width: 8),
              const Text(
                '=',
                style: TextStyle(color: secondaryWhiteColor),
              ),
              const SizedBox(width: 8),
              isMobile(context)
                  ? const Text(
                      '"https://\ngithub.com/tecrodrigocastro"',
                      style: TextStyle(color: accentOrangeColor),
                      overflow: TextOverflow.ellipsis,
                    )
                  : const Text(
                      '"https://github.com/tecrodrigocastro"',
                      style: TextStyle(color: accentOrangeColor),
                      overflow: TextOverflow.ellipsis,
                    ),
              const Text(
                ';',
                style: TextStyle(color: secondaryWhiteColor),
              ),
            ],
          ), */
        ],
      ),
    );
  }
}
