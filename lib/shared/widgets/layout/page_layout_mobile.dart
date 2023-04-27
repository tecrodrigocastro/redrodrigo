import 'package:flutter/material.dart';

class PageLayoutMobile extends StatelessWidget {
  const PageLayoutMobile(
      {super.key,
      required this.aboveChild,
      required this.mainAreaChild,
      required this.workspace});
  final Widget aboveChild;
  final Widget mainAreaChild;
  final String workspace;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(height: 30, child: Text(workspace)),
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: ListView(
              children: [aboveChild],
            ),
          ),
          SizedBox(
            height: 600,
            child: mainAreaChild,
          ),
        ],
      ),
    );
  }
}
