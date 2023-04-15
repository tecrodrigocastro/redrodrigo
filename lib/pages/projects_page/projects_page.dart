import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/projects_page/widgets/project_sidebar.dart';
import 'package:redrodrigo/shared/widgets/layout/page_layout.dart';

class ProjectsPage extends StatelessWidget {
  static const projectPageRoute = '_projects';

  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      sideBarChild: const ProjectsSideBar(),
      mainAreaChild: Container(
        color: Colors.red,
      ),
      workspace: projectPageRoute,
    );
  }
}
