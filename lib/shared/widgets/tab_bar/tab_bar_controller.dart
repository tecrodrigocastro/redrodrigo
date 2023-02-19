import 'package:flutter/material.dart';
import 'package:redrodrigo/shared/widgets/custom_footer.dart';
import 'package:redrodrigo/shared/widgets/tab_bar/tab_bar_header.dart';

class TabBarController extends StatelessWidget {
  const TabBarController({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          appBar: TabBarHeader(),
          drawer: Drawer(),
          body: TabBarView(
            children: [
              Center(child: const Text('data')),
              Center(child: const Text('data')),
              Center(child: const Text('data')),
            ],
          ),
          bottomNavigationBar: CustomFooter(),
        ),
      ),
    );
  }
}
