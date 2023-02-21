import '../../enums.dart';

class Resource {
  Resource({required this.type, required this.name, this.children});

  final ResourceType type;
  final String name;
  final List<Resource>? children;
}

class ResourceTree {
  final String treeTitle;
  final List<Resource>? treeStructure;

  ResourceTree({required this.treeTitle, this.treeStructure});
}
