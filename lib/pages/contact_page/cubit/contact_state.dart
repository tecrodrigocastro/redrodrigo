part of 'contact_cubit.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState({
    FormEntity? formEntity,
  }) = _ContactState;
  factory ContactState.initial() {
    return ContactState(
      formEntity: FormEntity(
        name: '',
        email: '',
        message: '',
      ),
    );
  }
}
