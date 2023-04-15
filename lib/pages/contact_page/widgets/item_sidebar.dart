import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class ItemSideBar extends StatefulWidget {
  const ItemSideBar({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  State<ItemSideBar> createState() => _ItemSideBarState();
}

class _ItemSideBarState extends State<ItemSideBar> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHover = false;
          });
        },
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: isHover ? secondaryWhiteColor : secondaryGreyColor,
            ),
            Text(
              ' ${widget.title}',
              style: TextStyle(
                color: isHover ? secondaryWhiteColor : secondaryGreyColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
