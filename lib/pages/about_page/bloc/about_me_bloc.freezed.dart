// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_me_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AboutMeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutMeEventCopyWith<$Res> {
  factory $AboutMeEventCopyWith(
          AboutMeEvent value, $Res Function(AboutMeEvent) then) =
      _$AboutMeEventCopyWithImpl<$Res, AboutMeEvent>;
}

/// @nodoc
class _$AboutMeEventCopyWithImpl<$Res, $Val extends AboutMeEvent>
    implements $AboutMeEventCopyWith<$Res> {
  _$AboutMeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$AboutMeEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'AboutMeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements AboutMeEvent {
  const factory Started() = _$Started;
}

/// @nodoc
mixin _$AboutMeState {
  List<Item>? get openFiles => throw _privateConstructorUsedError;
  Item? get activeFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AboutMeStateCopyWith<AboutMeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutMeStateCopyWith<$Res> {
  factory $AboutMeStateCopyWith(
          AboutMeState value, $Res Function(AboutMeState) then) =
      _$AboutMeStateCopyWithImpl<$Res, AboutMeState>;
  @useResult
  $Res call({List<Item>? openFiles, Item? activeFile});
}

/// @nodoc
class _$AboutMeStateCopyWithImpl<$Res, $Val extends AboutMeState>
    implements $AboutMeStateCopyWith<$Res> {
  _$AboutMeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openFiles = freezed,
    Object? activeFile = freezed,
  }) {
    return _then(_value.copyWith(
      openFiles: freezed == openFiles
          ? _value.openFiles
          : openFiles // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      activeFile: freezed == activeFile
          ? _value.activeFile
          : activeFile // ignore: cast_nullable_to_non_nullable
              as Item?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AboutMeStateCopyWith<$Res>
    implements $AboutMeStateCopyWith<$Res> {
  factory _$$_AboutMeStateCopyWith(
          _$_AboutMeState value, $Res Function(_$_AboutMeState) then) =
      __$$_AboutMeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item>? openFiles, Item? activeFile});
}

/// @nodoc
class __$$_AboutMeStateCopyWithImpl<$Res>
    extends _$AboutMeStateCopyWithImpl<$Res, _$_AboutMeState>
    implements _$$_AboutMeStateCopyWith<$Res> {
  __$$_AboutMeStateCopyWithImpl(
      _$_AboutMeState _value, $Res Function(_$_AboutMeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openFiles = freezed,
    Object? activeFile = freezed,
  }) {
    return _then(_$_AboutMeState(
      openFiles: freezed == openFiles
          ? _value._openFiles
          : openFiles // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      activeFile: freezed == activeFile
          ? _value.activeFile
          : activeFile // ignore: cast_nullable_to_non_nullable
              as Item?,
    ));
  }
}

/// @nodoc

class _$_AboutMeState implements _AboutMeState {
  const _$_AboutMeState({final List<Item>? openFiles, this.activeFile})
      : _openFiles = openFiles;

  final List<Item>? _openFiles;
  @override
  List<Item>? get openFiles {
    final value = _openFiles;
    if (value == null) return null;
    if (_openFiles is EqualUnmodifiableListView) return _openFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Item? activeFile;

  @override
  String toString() {
    return 'AboutMeState(openFiles: $openFiles, activeFile: $activeFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AboutMeState &&
            const DeepCollectionEquality()
                .equals(other._openFiles, _openFiles) &&
            (identical(other.activeFile, activeFile) ||
                other.activeFile == activeFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_openFiles), activeFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AboutMeStateCopyWith<_$_AboutMeState> get copyWith =>
      __$$_AboutMeStateCopyWithImpl<_$_AboutMeState>(this, _$identity);
}

abstract class _AboutMeState implements AboutMeState {
  const factory _AboutMeState(
      {final List<Item>? openFiles, final Item? activeFile}) = _$_AboutMeState;

  @override
  List<Item>? get openFiles;
  @override
  Item? get activeFile;
  @override
  @JsonKey(ignore: true)
  _$$_AboutMeStateCopyWith<_$_AboutMeState> get copyWith =>
      throw _privateConstructorUsedError;
}
