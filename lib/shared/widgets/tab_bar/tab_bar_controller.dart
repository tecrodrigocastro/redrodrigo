import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/about_page/about_page.dart';
import 'package:redrodrigo/pages/home_page/home_page.dart';
import 'package:redrodrigo/pages/projects_page/projects_page.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/widgets/custom_footer.dart';
import 'package:redrodrigo/shared/widgets/tab_bar/tab_bar_header.dart';

class TabBarController extends StatelessWidget {
  const TabBarController({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    bool isMobile(BuildContext context) => currentWidth < 800;
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          appBar:
              isMobile(context) ? const TabBarHeader() : const TabBarHeader(),
          drawer: const Drawer(),
          body: const TabBarView(
            children: [
              HomePage(),
              AboutPage(),
              ProjectsPage(),
              Scaffold(
                backgroundColor: primaryColor,
                body: Center(child: Text('Contact-me')),
              ),
            ],
          ),
          bottomNavigationBar: const CustomFooter(),
        ),
      ),
    );
  }
}
