import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/about_page/widgets/about_structure.dart';
import 'package:redrodrigo/pages/about_page/widgets/area_file_view.dart';
import 'package:redrodrigo/pages/about_page/widgets/category_structure.dart';
import 'package:redrodrigo/shared/widgets/layout/page_layout.dart';

class AboutPage extends StatelessWidget {
  static const aboutMePageRoute = "_sobre_mim";
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      workspace: aboutMePageRoute,
      mainAreaChild: const AreaFileView(),
      sideBarChild: CategoryStructure(
        categoryItemTree: aboutMeItemStructure,
      ),
    );
  }
}
