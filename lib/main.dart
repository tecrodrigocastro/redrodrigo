import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/about_page/cubit/about_cubit.dart';
import 'package:redrodrigo/pages/contact_page/cubit/contact_cubit.dart';
import 'package:redrodrigo/pages/home_page/home_page_mobile.dart';
import 'package:redrodrigo/pages/projects_page/cubit/projects_cubit_cubit.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/constants/constants.dart';
import 'package:redrodrigo/shared/widgets/tab_bar/tab_bar_controller.dart';

void main() {
  ///SPREAD
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AboutCubit()),
        BlocProvider(create: (_) => ProjectsCubit()),
        BlocProvider(create: (_) => ContactCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RED RODRIGO',
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: kFontFamily,
          textTheme: const TextTheme(
            displayLarge: TextStyle(fontSize: 62, color: secondaryWhiteColor),
            displayMedium: TextStyle(fontSize: 32),
            labelMedium: TextStyle(fontSize: 16),
            bodyLarge: TextStyle(fontSize: 18, color: secondaryWhiteColor),
            bodyMedium: TextStyle(fontSize: 14, color: secondaryWhiteColor),
          ),
        ),
        home: LayoutBuilder(builder: (context, constrais) {
          if (constrais.maxWidth > 800) {
            return const TabBarController();
          } else {
            return const HomePageMobile();
          }
        }),
      ),
    );
  }
}
