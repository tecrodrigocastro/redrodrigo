// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectEntity _$$_ProjectEntityFromJson(Map<String, dynamic> json) =>
    _$_ProjectEntity(
      title: json['title'] as String,
      techStackUsed: (json['techStackUsed'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TechStackEnumMap, e))
          .toList(),
      highlights: (json['highlights'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      projectDescription: json['projectDescription'] as String,
      githubLink: json['githubLink'] as String?,
      liveProjectLink: json['liveProjectLink'] as String?,
      thumbnail: json['thumbnail'] as String?,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_ProjectEntityToJson(_$_ProjectEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'techStackUsed':
          instance.techStackUsed?.map((e) => _$TechStackEnumMap[e]!).toList(),
      'highlights': instance.highlights,
      'projectDescription': instance.projectDescription,
      'githubLink': instance.githubLink,
      'liveProjectLink': instance.liveProjectLink,
      'thumbnail': instance.thumbnail,
      'id': instance.id,
    };

const _$TechStackEnumMap = {
  TechStack.flutter: 'flutter',
  TechStack.php: 'php',
  TechStack.laravel: 'laravel',
  TechStack.bootstrap: 'bootstrap',
  TechStack.dart: 'dart',
  TechStack.mysql: 'mysql',
};
