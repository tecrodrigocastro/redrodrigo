import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/projects_page/cubit/projects_cubit_cubit.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/enums.dart';

class ProjectsSideBar extends StatelessWidget {
  const ProjectsSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    final projectsState = context.watch<ProjectsCubit>();
    return SizedBox(
      child: Column(
        children: TechStack.values
            .map(
              (e) => CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                secondary: const Icon(Icons.code_outlined),
                value: projectsState.state.techStackToSelectionMapping[e],
                activeColor:
                    projectsState.state.techStackToSelectionMapping[e] == true
                        ? accentOrangeColor
                        : accentPurpleColor,
                title: Text(
                  e.name,
                  style: TextStyle(
                    color: projectsState.state.techStackToSelectionMapping[e] ==
                            true
                        ? accentOrangeColor
                        : accentPurpleColor,
                  ),
                ),
                onChanged: (value) {
                  // print(projectsState.state.techStackToSelectionMapping);

                  projectsState.onTechStackSelectionToggle(e);
                  //print(projectsState.state.techStackToSelectionMapping);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
