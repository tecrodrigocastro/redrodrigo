import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/about_page/cubit/about_cubit.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/widgets/layout/resource.dart';

class FileTabIndex extends StatelessWidget {
  const FileTabIndex({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    final currentState = context.read<AboutCubit>();
    final isSelected = currentState.state.activeFile!.name == item.name;

    return Container(
      padding: const EdgeInsets.all(4),
      color: isSelected ? Colors.red : Colors.green,
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
                const Icon(
                  Icons.arrow_drop_down,
                  size: 16,
                ),
                const SizedBox(width: 6),
                Text(
                  item.name,
                  style: TextStyle(
                    color: isSelected ? secondaryWhiteColor : primaryColorLight,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
