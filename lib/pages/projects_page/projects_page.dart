import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/projects_page/widgets/project_sidebar.dart';
import 'package:redrodrigo/pages/projects_page/widgets/projects_main_content.dart';
import 'package:redrodrigo/shared/widgets/layout/page_layout.dart';

class ProjectsPage extends StatelessWidget {
  static const projectPageRoute = '_projects';

  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      sideBarChild: ProjectsSideBar(),
      mainAreaChild: ProjectsMainContent(),
      workspace: projectPageRoute,
    );
  }
}
