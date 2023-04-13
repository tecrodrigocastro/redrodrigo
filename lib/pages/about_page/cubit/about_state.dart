part of 'about_cubit.dart';

@freezed
class AboutState with _$AboutState {
  const factory AboutState({
    final List<Item>? openFiles,
    final Item? activeFile,
  }) = _AboutState;
  factory AboutState.initial() {
    final introFileItem = Item(type: ItemType.file, name: 'intro.md');
    return AboutState(
      openFiles: [introFileItem],
      activeFile: introFileItem,
    );
  }

/*   factory AboutState.changed(AboutState newState){
    return AboutState(
      activeFile: newState
    );
  } */
}
