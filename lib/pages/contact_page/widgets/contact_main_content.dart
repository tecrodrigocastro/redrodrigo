import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/contact_page/widgets/contact_form.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class ContactMainContent extends StatefulWidget {
  const ContactMainContent({super.key});

  @override
  State<ContactMainContent> createState() => _ContactMainContentState();
}

class _ContactMainContentState extends State<ContactMainContent> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: primaryColor,
            border: Border.symmetric(
              horizontal: BorderSide(
                color: secondaryWhiteColor,
              ),
            ),
          ),
          child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onHover: (hover) {},
                  onPressed: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: Row(
                    children: [
/*                     Image.asset(
                      'assets/icons/markdown.webp',
                      color: secondaryWhiteColor,
                      width: 16,
                      height: 16,
                    ), */
                      const SizedBox(width: 6),
                      Text(
                        'contacts',
                        style: TextStyle(
                          color: isSelected
                              ? secondaryWhiteColor
                              : primaryColorLight,
                        ),
                      )
                    ],
                  ),
                ),
                isSelected
                    ? IconButton(
                        mouseCursor: SystemMouseCursors.click,
                        splashRadius: 12,
                        onPressed: () {
                          isSelected = !isSelected;
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 14,
                        ),
                      )
                    : IconButton(
                        mouseCursor: SystemMouseCursors.basic,
                        onPressed: () {
                          isSelected = !isSelected;
                        },
                        splashRadius: 1,
                        icon: const Icon(
                          Icons.circle,
                          size: 12,
                          color: primaryColorLight,
                        ),
                      ),
              ]),
        ),
        const Expanded(
          child: ContatcForm(),
        )
      ],
    );
  }
}
