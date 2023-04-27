import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/constants/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

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
              onPressed: () async {
                await launchUrlString(twitterLink);
              },
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
              onPressed: () async {
                await launchUrlString(linkedinLink);
              },
              icon: Image.asset(
                'assets/icons/linkedin.png',
                color: secondaryWhiteColor,
                width: 18,
                height: 18,
              ),
            ),
          ),
          const VerticalDivider(),
          const Spacer(),
          const VerticalDivider(),
          Text(
            '@tecrodrigocastro',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Tooltip(
            message: 'Github',
            child: IconButton(
              onPressed: () async {
                await launchUrlString(githubLink);
              },
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
