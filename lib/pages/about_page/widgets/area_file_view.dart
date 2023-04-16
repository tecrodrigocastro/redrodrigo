import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/about_page/cubit/about_cubit.dart';
import 'package:redrodrigo/pages/about_page/widgets/file_tab_element.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/constants/constants.dart';
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
                              return SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    snapshot.data ?? 'No information to show!',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 4,
                                    ),
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
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    border: Border.symmetric(
                      horizontal: BorderSide(color: secondaryGreyColor),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'PROBLEMS  ',
                            style: TextStyle(
                              color: secondaryGreyColor,
                              fontFamily: kFontFamily,
                            ),
                          ),
                          Text(
                            'OUTPUT  ',
                            style: TextStyle(
                                color: secondaryGreyColor,
                                fontFamily: kFontFamily),
                          ),
                          Text(
                            'GITLENS ',
                            style: TextStyle(
                                color: secondaryGreyColor,
                                fontFamily: kFontFamily),
                          ),
                          Text(
                            'COMMENTS  ',
                            style: TextStyle(
                                color: secondaryGreyColor,
                                fontFamily: kFontFamily),
                          ),
                          Text(
                            'DEBUG CONSOLE ',
                            style: TextStyle(
                                color: secondaryGreyColor,
                                fontFamily: kFontFamily),
                          ),
                          Text(
                            'TERMINAL',
                            style: TextStyle(fontFamily: kFontFamily),
                          ),
                        ],
                      ),
                      RichText(
                        text: const TextSpan(
                          text: '\nrodrigo@rodrigo-20u6002tbo',
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontFamily: kFontFamily,
                          ),
                          children: [
                            TextSpan(
                                text: ':',
                                style: TextStyle(color: Colors.white)),
                            TextSpan(
                              text: '~/Documents/projects/redrodrigo',
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                            TextSpan(
                                text: '\$',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}
