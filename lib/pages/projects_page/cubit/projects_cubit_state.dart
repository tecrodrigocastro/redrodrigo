part of 'projects_cubit_cubit.dart';

@freezed
class ProjectsCubitState with _$ProjectsCubitState {
  const factory ProjectsCubitState({
    required Map<TechStack, bool> techStackToSelectionMapping,
    final List<ProjectEntity>? activeProjects,
  }) = _ProjectsCubitState;

  factory ProjectsCubitState.initial() {
    const Map<TechStack, bool> initialMapping = {
      TechStack.flutter: false,
      TechStack.laravel: false,
      TechStack.php: false,
      TechStack.bootstrap: false,
      TechStack.dart: false,
      TechStack.mysql: false,
    };
    return ProjectsCubitState(
      techStackToSelectionMapping: initialMapping,
      activeProjects: listOfProjects,
    );
  }
/*   factory ProjectsCubitState.initial({
    Map<TechStack, bool>? techStackMapping,
    List<ProjectEntity>? projects,
  }) {
    return ProjectsCubitState(
      techStackToSelectionMapping: techStackMapping ?? {},
      activeProjects: projects ?? [],
    );
  } */
}
