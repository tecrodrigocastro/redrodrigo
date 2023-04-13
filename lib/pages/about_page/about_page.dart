import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/about_page/widgets/about_structure.dart';
import 'package:redrodrigo/pages/about_page/widgets/area_file_view.dart';
import 'package:redrodrigo/pages/about_page/widgets/category_structure.dart';
import 'package:redrodrigo/shared/widgets/layout/page_layout.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      workspace: '_about_me',
      mainAreaChild: const AreaFileView(),
      sideBarChild: CategoryStructure(
        categoryItemTree: aboutMeItemStructure,
      ),
    );
  }
}
