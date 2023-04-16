import 'package:flutter/cupertino.dart';
import 'package:redrodrigo/pages/contact_page/widgets/messageCustom.dart';

class ContatcForm extends StatefulWidget {
  const ContatcForm({super.key});

  @override
  State<ContatcForm> createState() => _ContatcFormState();
}

class _ContatcFormState extends State<ContatcForm> {
  bool messageCustom = false;
  void showContactForm() {
    setState(() {
      messageCustom = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (messageCustom) ...[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20).copyWith(top: 50),
              child: CustomMessage(showForm: showContactForm),
            ),
          ),
        ] else ...[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20).copyWith(top: 50),
            ),
          ),
        ]
      ],
    );
  }
}
