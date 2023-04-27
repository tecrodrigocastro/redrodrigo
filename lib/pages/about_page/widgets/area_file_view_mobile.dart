import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/about_page/cubit/about_cubit.dart';
import 'package:redrodrigo/pages/about_page/widgets/file_tab_element.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/widgets/markdown_widget.dart';

class AreaFileViewMobile extends StatefulWidget {
  const AreaFileViewMobile({super.key});

  @override
  State<AreaFileViewMobile> createState() => _AreaFileViewMobileState();
}

class _AreaFileViewMobileState extends State<AreaFileViewMobile> {
  @override
  Widget build(BuildContext context) {
    final currentState = context.watch<AboutCubit>();

    return currentState.state.openFiles!.isEmpty == true
        ? const Center(
            child: Text(
              'Você pode começar com a seção sobre_me acima para revisar o meu perfil',
            ),
          )
        : Column(
            children: [
              Container(
                width: double.infinity,
                height: 45,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: secondaryWhiteColor,
                    ),
                  ),
                ),
                child: BlocConsumer<AboutCubit, AboutState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return ListView(
                      scrollDirection: Axis.horizontal,
                      children: currentState.state.openFiles!.map((e) {
                        return FileTabElement(item: e);
                      }).toList(),
                    );
                  },
                ),
              ),
              BlocConsumer<AboutCubit, AboutState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  return Expanded(
                    flex: 2,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: MarkdownFileWidget(
                              filePath:
                                  'assets/markdowns/${currentState.state.activeFile!.name}'),
                        ),
                        Divider(
                          thickness: 3,
                          color: projectCardColor.withOpacity(0.2),
                        ),
                        Expanded(
                          flex: 1,
                          child: FutureBuilder(
                            future: DefaultAssetBundle.of(context).loadString(
                                'assets/markdowns/${currentState.state.activeFile!.name}'),
                            builder: (context, snapshot) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  snapshot.data ?? 'No information to show!',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 4,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          );
  }
}
