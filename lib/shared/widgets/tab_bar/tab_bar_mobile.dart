import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/widgets/tab_bar/tab_element.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TabBarMobile extends StatefulWidget with PreferredSizeWidget {
  const TabBarMobile({super.key});

  @override
  State<TabBarMobile> createState() => _TabBarMobileState();

  @override
  Size get preferredSize => const Size.fromHeight(41);
}

class _TabBarMobileState extends State<TabBarMobile> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      centerTitle: false,
      title: Text(
        'rodrigo-castro',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      actions: [
        Tooltip(
          message: 'language',
          child: TextButton(
            onPressed: () {
              //DefaultTabController.of(context)!.animateTo(3);
            },
            style: TextButton.styleFrom(
              foregroundColor: secondaryGreyColor,
            ),
            child: Row(
              children: const [
                VerticalDivider(),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '_language',
                ),
                SizedBox(
                  width: 4,
                )
              ],
            ),
          ),
        ),
      ],
      shape: Border.all(color: secondaryGreyColor),
    );
  }
}
