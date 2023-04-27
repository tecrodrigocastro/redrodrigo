import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/about_page/about_page_mobile.dart';
import 'package:redrodrigo/pages/contact_page/contact_page_mobile.dart';
import 'package:redrodrigo/pages/home_page/widgets/info_home.dart';
import 'package:redrodrigo/pages/projects_page/projects_page_mobile.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/widgets/custom_footer_mobile.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  PageController controller = PageController();
  final int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        leadingWidth: 400,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            'rodrigo-castro',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        shape: Border.all(color: secondaryGreyColor),
      ),
      endDrawer: Drawer(
        backgroundColor: primaryColor,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            AppBar(
              backgroundColor: primaryColor,
              leadingWidth: 400,
              leading: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'rodrigo-castro',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                )
              ],
              shape: Border.all(color: secondaryGreyColor),
            ),
            InkWell(
              onTap: () {
                controller.jumpToPage(0);
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(color: secondaryGreyColor),
                    right: BorderSide(color: secondaryGreyColor),
                    bottom: BorderSide(color: secondaryGreyColor),
                  ),
                ),
                child: Text(
                  '_hello',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                controller.jumpToPage(1);
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(color: secondaryGreyColor),
                    right: BorderSide(color: secondaryGreyColor),
                    bottom: BorderSide(color: secondaryGreyColor),
                  ),
                ),
                child: Text(
                  '_about-me',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                controller.jumpToPage(2);
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(color: secondaryGreyColor),
                    right: BorderSide(color: secondaryGreyColor),
                    bottom: BorderSide(color: secondaryGreyColor),
                  ),
                ),
                child: Text(
                  '_projects',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                controller.jumpToPage(3);
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(color: secondaryGreyColor),
                    right: BorderSide(color: secondaryGreyColor),
                    bottom: BorderSide(color: secondaryGreyColor),
                  ),
                ),
                child: Text(
                  '_contact-me',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomFooterMobile(),
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: PageView(
          controller: controller,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                InfoHome(),
              ],
            ),
            const AboutPageMobile(),
            const ProjectsPageMobile(),
            const ContactPageMobile(),
          ],
        ),
      ),
    );
  }
}
