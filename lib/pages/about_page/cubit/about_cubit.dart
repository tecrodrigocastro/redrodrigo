import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redrodrigo/shared/enums.dart';
import 'package:redrodrigo/shared/widgets/layout/item.dart';

part 'about_cubit.freezed.dart';
part 'about_state.dart';

class AboutCubit extends Cubit<AboutState> {
  //final AboutMeBloc _aboutMeBloc;
  AboutCubit() : super(AboutState.initial());

  void onSidePanelFileSelection(Item currentItem) {
    final currentFileIndex = state.openFiles != null
        ? state.openFiles!
            .indexWhere((element) => element.name == currentItem.name)
        : -1;

    if (currentFileIndex < 0) {
      emit(state.copyWith(
        openFiles: [...state.openFiles!, currentItem],
        activeFile: currentItem,
      ));
      /* emit(AboutState(activeFile: currentItem, openFiles: [
        ...state.openFiles!,
        currentItem,
      ])); */
    }
  }

  void onTabPanelFileSelection(Item currentItem) {
    emit(state.copyWith(activeFile: currentItem));
    //emit(AboutState(activeFile: currentItem));
  }

  void onFileClose(Item activeItem) {
    final tempOpenFiles = [...state.openFiles!];

    final selectedFileIndex =
        tempOpenFiles.indexWhere((element) => element.name == activeItem.name);

    final previousIndex = selectedFileIndex - 1;
    final nextIndex = selectedFileIndex + 1;

    final newActiveFileIndex = previousIndex >= 0
        ? tempOpenFiles[previousIndex]
        : nextIndex < tempOpenFiles.length
            ? tempOpenFiles[nextIndex]
            : null;

    tempOpenFiles.removeAt(selectedFileIndex);

    emit(state.copyWith(
        openFiles: tempOpenFiles, activeFile: newActiveFileIndex));
    //emit(AboutState(openFiles: tempOpenFiles, activeFile: newActiveFileIndex));
  }

  /* final introFileItem = Item(type: ItemType.file, name: 'intro.md');
  final aboutMeCubit =
      AboutState(activeFile: introFileItem, openFiles: [introFileItem]); */
}
