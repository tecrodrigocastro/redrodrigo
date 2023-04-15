import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redrodrigo/shared/enums.dart';

part 'project_entity.freezed.dart';
part 'project_entity.g.dart';

@freezed
class ProjectEntity with _$ProjectEntity {
  factory ProjectEntity({
    required String title,
    final List<TechStack>? techStackUsed,
    final List<String>? highlights,
    required String projectDescription,
    final String? githubLink,
    final String? liveProjectLink,
    final String? thumbnail,
    required String id,
  }) = _ProjectEntity;

  factory ProjectEntity.fromJson(Map<String, dynamic> json) =>
      _$ProjectEntityFromJson(json);
}
