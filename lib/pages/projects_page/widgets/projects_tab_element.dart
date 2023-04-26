import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/projects_page/cubit/projects_cubit_cubit.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/enums.dart';

class ProjectsTabElement extends StatefulWidget {
  const ProjectsTabElement({super.key});

  @override
  State<ProjectsTabElement> createState() => _ProjectsTabElementState();
}

class _ProjectsTabElementState extends State<ProjectsTabElement> {
  String getTabTitleForSelection(
      Map<TechStack, bool>? techStackToSelectionMapping) {
    String titleString = '';
    if (techStackToSelectionMapping == null) {
      return titleString;
    }

    techStackToSelectionMapping.forEach((key, value) {
      if (value == true) {
        titleString =
            '${titleString.isEmpty ? '' : '$titleString;'} ✔️ ${key.name.toUpperCase()}';
      }
    });
    return titleString.isEmpty ? 'Todos-Projetos' : titleString;
  }

  @override
  Widget build(BuildContext context) {
    final projectsState = context.watch<ProjectsCubit>();

    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.all(4),
        color: primaryColor,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                getTabTitleForSelection(
                    projectsState.state.techStackToSelectionMapping),
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            IconButton(
              mouseCursor: SystemMouseCursors.click,
              splashRadius: 12,
              onPressed: () {},
              icon: const Icon(
                Icons.close,
                size: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
