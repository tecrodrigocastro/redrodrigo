import 'package:flutter/src/widgets/framework.dart';
import 'package:redrodrigo/pages/projects_page/widgets/project_sidebar.dart';
import 'package:redrodrigo/pages/projects_page/widgets/projects_main_content.dart';
import 'package:redrodrigo/shared/widgets/layout/page_layout_mobile.dart';

class ProjectsPageMobile extends StatelessWidget {
  const ProjectsPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayoutMobile(
      aboveChild: ProjectsSideBar(),
      mainAreaChild: ProjectsMainContent(),
      workspace: '_projects',
    );
  }
}
