import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/contact_page/widgets/contact_form_mobile.dart';

class ContactMainMobile extends StatefulWidget {
  const ContactMainMobile({super.key});

  @override
  State<ContactMainMobile> createState() => _ContactMainMobileState();
}

class _ContactMainMobileState extends State<ContactMainMobile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: ContactFormMobile(),
    );
  }
}
