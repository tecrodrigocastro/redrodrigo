import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/contact_page/widgets/item_sidebar.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class ContactSideBar extends StatefulWidget {
  const ContactSideBar({super.key});

  @override
  State<ContactSideBar> createState() => _ContactSideBarState();
}

class _ContactSideBarState extends State<ContactSideBar> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ItemSideBar(
            icon: Icons.email, title: 'tec.rodrigocastro@gmail.com'),
        //const SizedBox(height: 5),
        const ItemSideBar(icon: Icons.phone, title: '+55 85 99154-6543'),
        const SizedBox(height: 15),

        Container(
          width: 360,
          decoration: const BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(color: secondaryGreyColor),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.arrow_drop_down_outlined),
                  Text(
                    'find-me-also-in',
                    style: TextStyle(color: secondaryWhiteColor),
                  )
                ],
              ),
            ),
          ),
        ),
        const ItemSideBar(icon: Icons.link, title: 'Youtube Channel'),
        const ItemSideBar(icon: Icons.link, title: 'Linkedin Profile'),
        const ItemSideBar(icon: Icons.link, title: 'Github Profile'),
      ],
    );
  }
}
