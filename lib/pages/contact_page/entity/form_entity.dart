import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_entity.freezed.dart';
part 'form_entity.g.dart';

@freezed
class FormEntity with _$FormEntity {
  factory FormEntity({
    required String name,
    required String email,
    required String message,
  }) = _FormEntity;

  factory FormEntity.fromJson(Map<String, dynamic> json) =>
      _$FormEntityFromJson(json);
}
