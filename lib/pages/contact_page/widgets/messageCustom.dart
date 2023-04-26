import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class CustomMessage extends StatelessWidget {
  const CustomMessage({super.key, required this.showForm});

  final Function showForm;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "Thanks for reaching out!",
              style: TextStyle(
                fontSize: 18,
                color: secondaryWhiteColor,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.handshake,
              color: accentOrangeColor,
            )
          ],
        ),
        const Text(
          "I Will reply back soon!",
          style: TextStyle(color: secondaryGreyColor),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              showForm();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: darkGreyColor,
            ),
            child: const Text("Send New Message"))
      ],
    );
  }
}
