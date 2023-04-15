// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects_cubit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectsCubitState {
  Map<TechStack, bool> get techStackToSelectionMapping =>
      throw _privateConstructorUsedError;
  List<ProjectEntity>? get activeProjects => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectsCubitStateCopyWith<ProjectsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsCubitStateCopyWith<$Res> {
  factory $ProjectsCubitStateCopyWith(
          ProjectsCubitState value, $Res Function(ProjectsCubitState) then) =
      _$ProjectsCubitStateCopyWithImpl<$Res, ProjectsCubitState>;
  @useResult
  $Res call(
      {Map<TechStack, bool> techStackToSelectionMapping,
      List<ProjectEntity>? activeProjects});
}

/// @nodoc
class _$ProjectsCubitStateCopyWithImpl<$Res, $Val extends ProjectsCubitState>
    implements $ProjectsCubitStateCopyWith<$Res> {
  _$ProjectsCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? techStackToSelectionMapping = null,
    Object? activeProjects = freezed,
  }) {
    return _then(_value.copyWith(
      techStackToSelectionMapping: null == techStackToSelectionMapping
          ? _value.techStackToSelectionMapping
          : techStackToSelectionMapping // ignore: cast_nullable_to_non_nullable
              as Map<TechStack, bool>,
      activeProjects: freezed == activeProjects
          ? _value.activeProjects
          : activeProjects // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectsCubitStateCopyWith<$Res>
    implements $ProjectsCubitStateCopyWith<$Res> {
  factory _$$_ProjectsCubitStateCopyWith(_$_ProjectsCubitState value,
          $Res Function(_$_ProjectsCubitState) then) =
      __$$_ProjectsCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<TechStack, bool> techStackToSelectionMapping,
      List<ProjectEntity>? activeProjects});
}

/// @nodoc
class __$$_ProjectsCubitStateCopyWithImpl<$Res>
    extends _$ProjectsCubitStateCopyWithImpl<$Res, _$_ProjectsCubitState>
    implements _$$_ProjectsCubitStateCopyWith<$Res> {
  __$$_ProjectsCubitStateCopyWithImpl(
      _$_ProjectsCubitState _value, $Res Function(_$_ProjectsCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? techStackToSelectionMapping = null,
    Object? activeProjects = freezed,
  }) {
    return _then(_$_ProjectsCubitState(
      techStackToSelectionMapping: null == techStackToSelectionMapping
          ? _value._techStackToSelectionMapping
          : techStackToSelectionMapping // ignore: cast_nullable_to_non_nullable
              as Map<TechStack, bool>,
      activeProjects: freezed == activeProjects
          ? _value._activeProjects
          : activeProjects // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>?,
    ));
  }
}

/// @nodoc

class _$_ProjectsCubitState implements _ProjectsCubitState {
  const _$_ProjectsCubitState(
      {required final Map<TechStack, bool> techStackToSelectionMapping,
      final List<ProjectEntity>? activeProjects})
      : _techStackToSelectionMapping = techStackToSelectionMapping,
        _activeProjects = activeProjects;

  final Map<TechStack, bool> _techStackToSelectionMapping;
  @override
  Map<TechStack, bool> get techStackToSelectionMapping {
    if (_techStackToSelectionMapping is EqualUnmodifiableMapView)
      return _techStackToSelectionMapping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_techStackToSelectionMapping);
  }

  final List<ProjectEntity>? _activeProjects;
  @override
  List<ProjectEntity>? get activeProjects {
    final value = _activeProjects;
    if (value == null) return null;
    if (_activeProjects is EqualUnmodifiableListView) return _activeProjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProjectsCubitState(techStackToSelectionMapping: $techStackToSelectionMapping, activeProjects: $activeProjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectsCubitState &&
            const DeepCollectionEquality().equals(
                other._techStackToSelectionMapping,
                _techStackToSelectionMapping) &&
            const DeepCollectionEquality()
                .equals(other._activeProjects, _activeProjects));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_techStackToSelectionMapping),
      const DeepCollectionEquality().hash(_activeProjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectsCubitStateCopyWith<_$_ProjectsCubitState> get copyWith =>
      __$$_ProjectsCubitStateCopyWithImpl<_$_ProjectsCubitState>(
          this, _$identity);
}

abstract class _ProjectsCubitState implements ProjectsCubitState {
  const factory _ProjectsCubitState(
      {required final Map<TechStack, bool> techStackToSelectionMapping,
      final List<ProjectEntity>? activeProjects}) = _$_ProjectsCubitState;

  @override
  Map<TechStack, bool> get techStackToSelectionMapping;
  @override
  List<ProjectEntity>? get activeProjects;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectsCubitStateCopyWith<_$_ProjectsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
