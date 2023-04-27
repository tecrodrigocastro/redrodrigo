import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class CustomFooterMobile extends StatelessWidget {
  const CustomFooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5),
      decoration: const BoxDecoration(
        color: primaryColor,
        border: Border(
            top: BorderSide(
          color: primaryColorLight,
        )),
      ),
      height: 40,
      child: Row(
        children: [
          Text(
            'minhas redes:',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const VerticalDivider(),
          Tooltip(
            message: 'Twitter',
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/twitter.png',
                color: secondaryWhiteColor,
                width: 18,
                height: 18,
              ),
            ),
          ),
          const VerticalDivider(),
          Tooltip(
            message: 'Linkedin',
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/linkedin.png',
                color: secondaryWhiteColor,
                width: 18,
                height: 18,
              ),
            ),
          ),
          const VerticalDivider(),
          const VerticalDivider(),
          Tooltip(
            message: 'Github',
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/github.png',
                color: secondaryWhiteColor,
                width: 18,
                height: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}