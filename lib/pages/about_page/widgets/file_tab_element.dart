import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/about_page/cubit/about_cubit.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/widgets/layout/item.dart';

class FileTabElement extends StatelessWidget {
  const FileTabElement({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    final currentState = context.watch<AboutCubit>();
    final isSelected = currentState.state.activeFile?.name == item.name;

    return BlocConsumer<AboutCubit, AboutState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(4),
          color: isSelected ? primaryColorDark : primaryColor,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onHover: (hover) {},
                onPressed: () {
                  currentState.onTabPanelFileSelection(item);
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/markdown.webp',
                      color: secondaryWhiteColor,
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      item.name,
                      style: TextStyle(
                        color: isSelected
                            ? secondaryWhiteColor
                            : primaryColorLight,
                      ),
                    )
                  ],
                ),
              ),
              if (isSelected == true) ...[
                item.name == currentState.state.activeFile?.name
                    ? IconButton(
                        mouseCursor: SystemMouseCursors.click,
                        splashRadius: 12,
                        onPressed: () {
                          currentState.onFileClose(item);
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 14,
                        ),
                      )
                    : IconButton(
                        mouseCursor: SystemMouseCursors.basic,
                        onPressed: () {},
                        splashRadius: 1,
                        icon: const Icon(
                          Icons.circle,
                          size: 12,
                          color: primaryColorLight,
                        ),
                      ),
              ]
            ],
          ),
        );
      },
    );
  }
}
