import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownFileWidget extends StatelessWidget {
  const MarkdownFileWidget({super.key, required this.filePath});
  final String filePath;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(filePath),
      builder: (context, snapshot) {
        // final buffer = snapshot.data!.buffer;
        return Markdown(
          data: snapshot.data ?? '# No Data',
          padding: const EdgeInsets.all(20),
          styleSheet: MarkdownStyleSheet(p: const TextStyle(fontSize: 15)),
        );
      },
    );
  }
}
