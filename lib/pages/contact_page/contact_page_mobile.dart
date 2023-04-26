import 'package:flutter/src/widgets/framework.dart';
import 'package:redrodrigo/pages/contact_page/widgets/contact_main_mobile.dart';
import 'package:redrodrigo/pages/contact_page/widgets/contact_sidebar_widget.dart';
import 'package:redrodrigo/shared/widgets/layout/page_layout_mobile.dart';

class ContactPageMobile extends StatelessWidget {
  const ContactPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayoutMobile(
      aboveChild: ContactSideBar(),
      mainAreaChild: ContactMainMobile(),
      workspace: '_contact',
    );
  }
}
