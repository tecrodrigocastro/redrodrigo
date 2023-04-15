import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redrodrigo/pages/projects_page/data/projects_list_data.dart';
import 'package:redrodrigo/pages/projects_page/entity/project_entity.dart';
import 'package:redrodrigo/shared/enums.dart';

part 'projects_cubit_cubit.freezed.dart';
part 'projects_cubit_state.dart';

/* const Map<TechStack, bool> initialMapping = {
  TechStack.flutter: false,
  TechStack.laravel: false,
  TechStack.php: false,
  TechStack.bootstrap: false,
  TechStack.dart: false,
}; */

class ProjectsCubit extends Cubit<ProjectsCubitState> {
  ProjectsCubit() : super(ProjectsCubitState.initial());

  void onTechStackSelectionToggle(TechStack selectedTechStack) {
    final currentMapping =
        Map<TechStack, bool>.from(state.techStackToSelectionMapping);
    currentMapping.update(selectedTechStack, (value) => !value);

    List<ProjectEntity> selectedProjects = listOfProjects;
    currentMapping.forEach((key, value) {
      if (value == true) {
        selectedProjects = selectedProjects
            .where((e) => e.techStackUsed!.contains(key))
            .toList();
      }
    });
    emit(state.copyWith(
      activeProjects: selectedProjects,
      techStackToSelectionMapping: currentMapping,
    ));
  }
}
