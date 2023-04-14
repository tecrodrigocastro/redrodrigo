import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/about_page/widgets/expanded_component.dart';
import 'package:redrodrigo/pages/about_page/widgets/file_tab_element.dart';
import 'package:redrodrigo/shared/enums.dart';
import 'package:redrodrigo/shared/widgets/layout/item.dart';

class CategoryStructure extends StatelessWidget {
  const CategoryStructure({super.key, required this.categoryItemTree});

  final ItemTree categoryItemTree;
  @override
  Widget build(BuildContext context) {
    if (categoryItemTree.treeStructure == null ||
        categoryItemTree.treeStructure!.isEmpty == true) {
      return const Text(
        'No structure to show',
        style: TextStyle(color: Colors.white),
      );
    } else {
      return Column(
        children: categoryItemTree.treeStructure!.map((e) {
          if (e.type == ItemType.folder) {
            return ExpandedComponent(item: e);
          } else {
            return FileTabElement(item: e);
          }
        }).toList(),
      );
    }
  }
}
