import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redrodrigo/shared/enums.dart';
import 'package:redrodrigo/shared/widgets/layout/item.dart';

part 'about_me_bloc.freezed.dart';
part 'about_me_event.dart';
part 'about_me_state.dart';

class AboutMeBloc extends Bloc<AboutMeEvent, AboutMeState> {
  AboutMeBloc() : super(AboutMeState.initial()) {
    final introFileItem = Item(type: ItemType.file, name: 'intro.md');
    on<Started>((event, emit) {
      emit(state
          .copyWith(activeFile: introFileItem, openFiles: [introFileItem]));
    });
  }
}
