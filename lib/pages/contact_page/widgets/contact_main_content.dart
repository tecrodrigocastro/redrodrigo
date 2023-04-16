import 'package:flutter/cupertino.dart';
import 'package:redrodrigo/pages/contact_page/widgets/contact_form.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class ContactMainContent extends StatelessWidget {
  const ContactMainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          width: double.infinity,
          color: primaryColorDark,
        ),
        const Expanded(
          child: ContatcForm(),
        )
      ],
    );
  }
}
