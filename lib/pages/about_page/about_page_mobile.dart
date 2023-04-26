import 'package:flutter/widgets.dart';
import 'package:redrodrigo/pages/about_page/widgets/about_structure.dart';
import 'package:redrodrigo/pages/about_page/widgets/area_file_view_mobile.dart';
import 'package:redrodrigo/pages/about_page/widgets/category_structure.dart';
import 'package:redrodrigo/shared/widgets/layout/page_layout_mobile.dart';

class AboutPageMobile extends StatefulWidget {
  const AboutPageMobile({super.key});

  @override
  State<AboutPageMobile> createState() => _AboutPageMobileState();
}

class _AboutPageMobileState extends State<AboutPageMobile> {
  @override
  Widget build(BuildContext context) {
    return PageLayoutMobile(
      aboveChild: CategoryStructure(categoryItemTree: aboutMeItemStructure),
      mainAreaChild: const AreaFileViewMobile(),
      workspace: '_about_me',
    );
  }
}
