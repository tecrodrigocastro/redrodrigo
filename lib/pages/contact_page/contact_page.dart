import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/contact_page/widgets/contact_main_content.dart';
import 'package:redrodrigo/pages/contact_page/widgets/contact_sidebar_widget.dart';
import 'package:redrodrigo/pages/contact_page/widgets/messageCustom.dart';
import 'package:redrodrigo/shared/widgets/layout/page_layout.dart';

class ContactPage extends StatefulWidget {
  static const contactPageRoute = '_contact';

  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      sideBarChild: ContactSideBar(),
      mainAreaChild: ContactMainContent(),
      workspace: ContactPage.contactPageRoute,
    );
  }
}

void sendMessage(String message) async {
  final response = await Dio().post(
    'https://redrodrigo.com/messages',
    data: {
      "name": "",
      "email": "",
      "message": "",
    },
  );
  if (response.statusCode == 200) {
    CustomMessage(showForm: () {
      print(response.data.message);
    });
  } else {
    CustomMessage(showForm: () {
      print(response.data.message);
    });
  }
}
