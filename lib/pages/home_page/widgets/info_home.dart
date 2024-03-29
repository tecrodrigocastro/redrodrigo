import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

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
                'Olá a todos, eu sou;',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: primaryColorLight,
                    ),
              ),
            ],
          ),
          Text(
            'Rodrigo Castro',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '> FullStack developer\n  Laravel and Flutter',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: secondaryBlueColor),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            '// site desenvolvido em flutter!',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: secondaryGreyColor),
          ),
          Text(
            '// veja minha página github',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: secondaryGreyColor),
          ),
          RichText(
            text: const TextSpan(
              text: 'const  ',
              style: TextStyle(color: secondaryBlueColor),
              children: [
                TextSpan(
                  text: 'githubLink  ',
                  style: TextStyle(color: accentGreenColor),
                ),
                TextSpan(
                  text: '=  ',
                  style: TextStyle(color: secondaryWhiteColor),
                ),
                TextSpan(
                  text: '"https://github.com/tecrodrigocastro"',
                  style: TextStyle(
                    color: accentOrangeColor,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                TextSpan(
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
