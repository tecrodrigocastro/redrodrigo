// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectEntity _$ProjectEntityFromJson(Map<String, dynamic> json) {
  return _ProjectEntity.fromJson(json);
}

/// @nodoc
mixin _$ProjectEntity {
  String get title => throw _privateConstructorUsedError;
  List<TechStack>? get techStackUsed => throw _privateConstructorUsedError;
  List<String>? get highlights => throw _privateConstructorUsedError;
  String get projectDescription => throw _privateConstructorUsedError;
  String? get githubLink => throw _privateConstructorUsedError;
  String? get liveProjectLink => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectEntityCopyWith<ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEntityCopyWith<$Res> {
  factory $ProjectEntityCopyWith(
          ProjectEntity value, $Res Function(ProjectEntity) then) =
      _$ProjectEntityCopyWithImpl<$Res, ProjectEntity>;
  @useResult
  $Res call(
      {String title,
      List<TechStack>? techStackUsed,
      List<String>? highlights,
      String projectDescription,
      String? githubLink,
      String? liveProjectLink,
      String? thumbnail,
      String id});
}

/// @nodoc
class _$ProjectEntityCopyWithImpl<$Res, $Val extends ProjectEntity>
    implements $ProjectEntityCopyWith<$Res> {
  _$ProjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? techStackUsed = freezed,
    Object? highlights = freezed,
    Object? projectDescription = null,
    Object? githubLink = freezed,
    Object? liveProjectLink = freezed,
    Object? thumbnail = freezed,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      techStackUsed: freezed == techStackUsed
          ? _value.techStackUsed
          : techStackUsed // ignore: cast_nullable_to_non_nullable
              as List<TechStack>?,
      highlights: freezed == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      projectDescription: null == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      githubLink: freezed == githubLink
          ? _value.githubLink
          : githubLink // ignore: cast_nullable_to_non_nullable
              as String?,
      liveProjectLink: freezed == liveProjectLink
          ? _value.liveProjectLink
          : liveProjectLink // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectEntityCopyWith<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  factory _$$_ProjectEntityCopyWith(
          _$_ProjectEntity value, $Res Function(_$_ProjectEntity) then) =
      __$$_ProjectEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      List<TechStack>? techStackUsed,
      List<String>? highlights,
      String projectDescription,
      String? githubLink,
      String? liveProjectLink,
      String? thumbnail,
      String id});
}

/// @nodoc
class __$$_ProjectEntityCopyWithImpl<$Res>
    extends _$ProjectEntityCopyWithImpl<$Res, _$_ProjectEntity>
    implements _$$_ProjectEntityCopyWith<$Res> {
  __$$_ProjectEntityCopyWithImpl(
      _$_ProjectEntity _value, $Res Function(_$_ProjectEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? techStackUsed = freezed,
    Object? highlights = freezed,
    Object? projectDescription = null,
    Object? githubLink = freezed,
    Object? liveProjectLink = freezed,
    Object? thumbnail = freezed,
    Object? id = null,
  }) {
    return _then(_$_ProjectEntity(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      techStackUsed: freezed == techStackUsed
          ? _value._techStackUsed
          : techStackUsed // ignore: cast_nullable_to_non_nullable
              as List<TechStack>?,
      highlights: freezed == highlights
          ? _value._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      projectDescription: null == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      githubLink: freezed == githubLink
          ? _value.githubLink
          : githubLink // ignore: cast_nullable_to_non_nullable
              as String?,
      liveProjectLink: freezed == liveProjectLink
          ? _value.liveProjectLink
          : liveProjectLink // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectEntity implements _ProjectEntity {
  _$_ProjectEntity(
      {required this.title,
      final List<TechStack>? techStackUsed,
      final List<String>? highlights,
      required this.projectDescription,
      this.githubLink,
      this.liveProjectLink,
      this.thumbnail,
      required this.id})
      : _techStackUsed = techStackUsed,
        _highlights = highlights;

  factory _$_ProjectEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectEntityFromJson(json);

  @override
  final String title;
  final List<TechStack>? _techStackUsed;
  @override
  List<TechStack>? get techStackUsed {
    final value = _techStackUsed;
    if (value == null) return null;
    if (_techStackUsed is EqualUnmodifiableListView) return _techStackUsed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _highlights;
  @override
  List<String>? get highlights {
    final value = _highlights;
    if (value == null) return null;
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String projectDescription;
  @override
  final String? githubLink;
  @override
  final String? liveProjectLink;
  @override
  final String? thumbnail;
  @override
  final String id;

  @override
  String toString() {
    return 'ProjectEntity(title: $title, techStackUsed: $techStackUsed, highlights: $highlights, projectDescription: $projectDescription, githubLink: $githubLink, liveProjectLink: $liveProjectLink, thumbnail: $thumbnail, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectEntity &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._techStackUsed, _techStackUsed) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights) &&
            (identical(other.projectDescription, projectDescription) ||
                other.projectDescription == projectDescription) &&
            (identical(other.githubLink, githubLink) ||
                other.githubLink == githubLink) &&
            (identical(other.liveProjectLink, liveProjectLink) ||
                other.liveProjectLink == liveProjectLink) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_techStackUsed),
      const DeepCollectionEquality().hash(_highlights),
      projectDescription,
      githubLink,
      liveProjectLink,
      thumbnail,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectEntityCopyWith<_$_ProjectEntity> get copyWith =>
      __$$_ProjectEntityCopyWithImpl<_$_ProjectEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectEntityToJson(
      this,
    );
  }
}

abstract class _ProjectEntity implements ProjectEntity {
  factory _ProjectEntity(
      {required final String title,
      final List<TechStack>? techStackUsed,
      final List<String>? highlights,
      required final String projectDescription,
      final String? githubLink,
      final String? liveProjectLink,
      final String? thumbnail,
      required final String id}) = _$_ProjectEntity;

  factory _ProjectEntity.fromJson(Map<String, dynamic> json) =
      _$_ProjectEntity.fromJson;

  @override
  String get title;
  @override
  List<TechStack>? get techStackUsed;
  @override
  List<String>? get highlights;
  @override
  String get projectDescription;
  @override
  String? get githubLink;
  @override
  String? get liveProjectLink;
  @override
  String? get thumbnail;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectEntityCopyWith<_$_ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
