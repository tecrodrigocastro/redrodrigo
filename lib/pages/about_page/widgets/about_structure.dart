import 'package:redrodrigo/shared/enums.dart';
import 'package:redrodrigo/shared/widgets/layout/item.dart';

final ItemTree aboutMeItemStructure = ItemTree(
  treeTitle: "sobre_mim",
  treeStructure: [
    Item(
      type: ItemType.folder,
      name: "pessoal",
      children: [
        Item(
          type: ItemType.folder,
          name: "educação",
          children: [
            Item(type: ItemType.file, name: "detalhes_educacao.md"),
          ],
        ),
        Item(
          type: ItemType.file,
          name: "interesses.md",
        ),
        Item(
          type: ItemType.file,
          name: "intro.md",
        )
      ],
    ),
    Item(
      type: ItemType.folder,
      name: "profissional",
      children: [
        Item(type: ItemType.file, name: "pregressao_carreira.md"),
        Item(type: ItemType.file, name: "skills.md"),
        Item(type: ItemType.file, name: "conquistas.md"),
      ],
    )
  ],
);
