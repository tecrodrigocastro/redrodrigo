import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/about_page/cubit/about_cubit.dart';
import 'package:redrodrigo/pages/about_page/widgets/file_tab_element.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/widgets/markdown_widget.dart';

class AreaFileView extends StatefulWidget {
  const AreaFileView({super.key});

  @override
  State<AreaFileView> createState() => _AreaFileViewState();
}

class _AreaFileViewState extends State<AreaFileView> {
  @override
  Widget build(BuildContext context) {
    final currentState = context.watch<AboutCubit>();
    return currentState.state.openFiles!.isEmpty == true
        ? const Center(
            child: Text(
              'Você pode começar com a seção sobre_me à esquerda para revisar o meu perfil',
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 35,
                color: primaryColorDark,
                child: BlocConsumer<AboutCubit, AboutState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return Row(
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
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: MarkdownFileWidget(
                              filePath:
                                  'markdowns/${currentState.state.activeFile!.name}'),
                        )
                      ],
                    ),
                  );
                },
              ),
              VerticalDivider(
                thickness: 3,
                color: projectCardColor.withOpacity(0.2),
              ),
              Expanded(
                flex: 1,
                child: FutureBuilder(
                  future: DefaultAssetBundle.of(context).loadString(
                      'markdowns/${currentState.state.activeFile!.name}'),
                  builder: (context, snapshot) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          snapshot.data ?? 'No information to show!',
                          style: const TextStyle(
                            color: secondaryGreyColor,
                            fontSize: 4,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
  }
}
