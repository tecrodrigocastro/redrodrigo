import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/widgets/tab_bar/tab_element.dart';

class TabBarHeader extends StatefulWidget implements PreferredSizeWidget {
  const TabBarHeader({super.key});

  @override
  State<TabBarHeader> createState() => _TabBarHeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(42);
}

class _TabBarHeaderState extends State<TabBarHeader> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      centerTitle: false,
      title: const TabBar(
        isScrollable: true,
        indicatorColor: accentOrangeColor,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 8,
        labelPadding: EdgeInsets.zero,
        labelColor: secondaryWhiteColor,
        unselectedLabelColor: primaryColorLight,
        tabs: [
          TabElement(title: '_hello'),
          TabElement(title: '_about_me'),
          TabElement(title: '_projects'),
          TabElement(title: '_contact_me'),
          //TabElement(title: '_contact_me'),
        ],
      ),
      leadingWidth: 400,
      leading: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          'rodrigo-castro',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
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
