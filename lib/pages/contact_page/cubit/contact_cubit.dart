import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redrodrigo/pages/contact_page/entity/form_entity.dart';

part 'contact_cubit.freezed.dart';
part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactState.initial());

  void onFormInputChanged({String? name, String? email, String? message}) {
    FormEntity currentState = state.formEntity!;
    emit(
      state.copyWith(
        formEntity: FormEntity(
          name: name ?? currentState.name,
          email: email ?? currentState.email,
          message: message ?? currentState.message,
        ),
      ),
    );
  }

  void cleanState() {
    emit(
      state.copyWith(
        formEntity: FormEntity(
          name: '',
          email: '',
          message: '',
        ),
      ),
    );
  }
}
