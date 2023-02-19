import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class InfoHome extends StatelessWidget {
  const InfoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 200),
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
                  'Hi all, I am;',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: primaryColorLight,
                      ),
                ),
              ],
            ),
            Text(
              'Rodrigo Castro',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              '> FullStack developer\n  Laravel and Flutter',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: secondaryBlueColor),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              '// website developed in flutter!',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: secondaryGreyColor),
            ),
            Text(
              '// see my github page',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: secondaryGreyColor),
            ),
            Row(
              children: const [
                Text(
                  'const',
                  style: TextStyle(color: secondaryBlueColor),
                ),
                SizedBox(width: 8),
                Text(
                  'githubLink',
                  style: TextStyle(color: accentGreenColor),
                ),
                SizedBox(width: 8),
                Text(
                  '=',
                  style: TextStyle(color: secondaryWhiteColor),
                ),
                SizedBox(width: 8),
                Text(
                  '"https://github.com/tecrodrigocastro"',
                  style: TextStyle(color: accentOrangeColor),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  ';',
                  style: TextStyle(color: secondaryWhiteColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
