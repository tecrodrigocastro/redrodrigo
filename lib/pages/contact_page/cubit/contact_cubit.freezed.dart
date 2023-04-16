// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactState {
  FormEntity? get formEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactStateCopyWith<ContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) then) =
      _$ContactStateCopyWithImpl<$Res, ContactState>;
  @useResult
  $Res call({FormEntity? formEntity});

  $FormEntityCopyWith<$Res>? get formEntity;
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res, $Val extends ContactState>
    implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formEntity = freezed,
  }) {
    return _then(_value.copyWith(
      formEntity: freezed == formEntity
          ? _value.formEntity
          : formEntity // ignore: cast_nullable_to_non_nullable
              as FormEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormEntityCopyWith<$Res>? get formEntity {
    if (_value.formEntity == null) {
      return null;
    }

    return $FormEntityCopyWith<$Res>(_value.formEntity!, (value) {
      return _then(_value.copyWith(formEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContactStateCopyWith<$Res>
    implements $ContactStateCopyWith<$Res> {
  factory _$$_ContactStateCopyWith(
          _$_ContactState value, $Res Function(_$_ContactState) then) =
      __$$_ContactStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormEntity? formEntity});

  @override
  $FormEntityCopyWith<$Res>? get formEntity;
}

/// @nodoc
class __$$_ContactStateCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$_ContactState>
    implements _$$_ContactStateCopyWith<$Res> {
  __$$_ContactStateCopyWithImpl(
      _$_ContactState _value, $Res Function(_$_ContactState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formEntity = freezed,
  }) {
    return _then(_$_ContactState(
      formEntity: freezed == formEntity
          ? _value.formEntity
          : formEntity // ignore: cast_nullable_to_non_nullable
              as FormEntity?,
    ));
  }
}

/// @nodoc

class _$_ContactState implements _ContactState {
  const _$_ContactState({this.formEntity});

  @override
  final FormEntity? formEntity;

  @override
  String toString() {
    return 'ContactState(formEntity: $formEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactState &&
            (identical(other.formEntity, formEntity) ||
                other.formEntity == formEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactStateCopyWith<_$_ContactState> get copyWith =>
      __$$_ContactStateCopyWithImpl<_$_ContactState>(this, _$identity);
}

abstract class _ContactState implements ContactState {
  const factory _ContactState({final FormEntity? formEntity}) = _$_ContactState;

  @override
  FormEntity? get formEntity;
  @override
  @JsonKey(ignore: true)
  _$$_ContactStateCopyWith<_$_ContactState> get copyWith =>
      throw _privateConstructorUsedError;
}
