import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/about_page/cubit/about_cubit.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/widgets/layout/item.dart';

class ExpandedFile extends StatelessWidget {
  const ExpandedFile({super.key, required this.file});
  final Item file;

  @override
  Widget build(BuildContext context) {
    final abouteState = context.watch<AboutCubit>();
    final AboutState abouteMePageState = abouteState.state;
    final isActive = abouteMePageState.activeFile != null &&
        abouteMePageState.activeFile!.name == file.name;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: TextButton(
        // Todo: fix issue where the active file color is not restoring to default if \
        // it is the last file which is being closed.
        style: TextButton.styleFrom(
          foregroundColor:
              isActive == true ? accentOrangeColor : primaryColorLight,
        ),
        child: Row(
          children: [
            const Text(
              '|_',
            ),
            Image.asset(
              'assets/icons/markdown.webp',
              color: secondaryWhiteColor,
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(file.name),
          ],
        ),
        onPressed: () {
          abouteState.onSidePanelFileSelection(file);
        },
      ),
    );
  }
}
