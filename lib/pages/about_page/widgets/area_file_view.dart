import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/about_page/cubit/about_cubit.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class AreaFileView extends StatefulWidget {
  const AreaFileView({super.key});

  @override
  State<AreaFileView> createState() => _AreaFileViewState();
}

class _AreaFileViewState extends State<AreaFileView> {
  @override
  Widget build(BuildContext context) {
    final currentState = context.read<AboutCubit>().state;
    return currentState.openFiles!.isEmpty == true
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
                child: Row(),
              ),
            ],
          );
  }
}
