part of 'about_me_bloc.dart';

@freezed
class AboutMeState with _$AboutMeState {
  const factory AboutMeState({
    final List<Item>? openFiles,
    final Item? activeFile,
  }) = _AboutMeState;
  factory AboutMeState.initial() {
    return const AboutMeState(
      openFiles: [],
      activeFile: null,
    );
  }
}
