import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/projects_page/cubit/projects_cubit_cubit.dart';
import 'package:redrodrigo/pages/projects_page/widgets/project_card.dart';
import 'package:redrodrigo/pages/projects_page/widgets/projects_tab_element.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class ProjectsMainContent extends StatelessWidget {
  const ProjectsMainContent({super.key});

  @override
  Widget build(BuildContext context) {
    final projectsState = context.watch<ProjectsCubit>();

    return Column(
      children: [
        Container(
          height: 35,
          width: double.infinity,
          color: primaryColorDark,
          child: const ProjectsTabElement(),
        ),
        if (projectsState.state.activeProjects!.isEmpty) ...[
          const Expanded(
            child: Center(
              child: Text(
                  'No projects to show with the selected TechStack combination, \n Scope for improvement, one thing at a time ;)'),
            ),
          ),
        ] else ...[
          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  runSpacing: 30,
                  spacing: 40,
                  children: projectsState.state.activeProjects!
                      .map(
                        (e) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 400,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    children: [
                                      Text(
                                        e.title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium!
                                            .copyWith(
                                              color: Colors.blueAccent,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ProjectCard(project: e),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
