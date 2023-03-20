import '../../enums.dart';

class Item {
  Item({required this.type, required this.name, this.children});

  final ItemType type;
  final String name;
  final List<Item>? children;
}

class ItemTree {
  final String treeTitle;
  final List<Item>? treeStructure;

  ItemTree({required this.treeTitle, this.treeStructure});
}
