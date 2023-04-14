import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/about_page/cubit/about_cubit.dart';
import 'package:redrodrigo/pages/about_page/widgets/expanded_file.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/enums.dart';
import 'package:redrodrigo/shared/widgets/layout/item.dart';

class ExpandedComponent extends StatefulWidget {
  const ExpandedComponent({super.key, required this.item});
  final Item item;

  @override
  State<ExpandedComponent> createState() => _ExpandedComponentState();
}

class _ExpandedComponentState extends State<ExpandedComponent> {
  bool isExpanded = false;
  var currentState;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () {
        currentState = context.read<AboutCubit>();
        if (currentState.state.openFiles != null &&
            currentState.state.openFiles!.length == 1 &&
            widget.item.name == 'personal') {
          setState(() {
            isExpanded = true;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AboutCubit, AboutState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        !isExpanded
                            ? Icons.keyboard_arrow_right_outlined
                            : Icons.keyboard_arrow_down_sharp,
                      ),
                      /*  Text(
                        isExpanded == false ? '>' : 'v',
                      ), */
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(
                        Icons.folder,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        widget.item.name,
                        style: const TextStyle(
                          color: secondaryWhiteColor,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (isExpanded == true &&
                widget.item.children!.isEmpty != true) ...[
              ...widget.item.children!.map((e) {
                if (e.type == ItemType.folder) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ExpandedComponent(item: e),
                  );
                } else {
                  return ExpandedFile(file: e);
                }
              })
            ]
          ],
        );
      },
    );
  }
}
