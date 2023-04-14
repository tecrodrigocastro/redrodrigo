import 'package:redrodrigo/shared/enums.dart';
import 'package:redrodrigo/shared/widgets/layout/item.dart';

final ItemTree aboutMeItemStructure = ItemTree(
  treeTitle: "about_me",
  treeStructure: [
    Item(
      type: ItemType.folder,
      name: "personal",
      children: [
        Item(
          type: ItemType.folder,
          name: "education",
          children: [
            Item(type: ItemType.file, name: "education_details.md"),
          ],
        ),
        Item(
          type: ItemType.file,
          name: "interests.md",
        ),
        Item(
          type: ItemType.file,
          name: "intro.md",
        )
      ],
    ),
    Item(
      type: ItemType.folder,
      name: "professional",
      children: [
        Item(type: ItemType.file, name: "career_progression.md"),
        Item(type: ItemType.file, name: "skills.md"),
        Item(type: ItemType.file, name: "achievements.md"),
      ],
    )
  ],
);
