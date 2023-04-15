import 'package:flutter/material.dart';
import 'package:redrodrigo/pages/projects_page/entity/project_entity.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key, required this.project});
  final ProjectEntity project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHover = false;
        });
      },
      child: Container(
        width: 370,
        height: 250,
        decoration: BoxDecoration(
          border: Border.all(
              color: isHover == true ? secondaryBlueColor : secondaryWhiteColor,
              width: isHover == true ? 2 : 1),
          borderRadius: BorderRadius.circular(15),
          boxShadow: isHover == true
              ? [
                  BoxShadow(
                    color: accentOrangeColor.withAlpha(200),
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                  )
                ]
              : [],
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  color: projectCardColor,
                  image: DecorationImage(
                    image: AssetImage(
                      widget.project.thumbnail!,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.project.projectDescription,
                        style: const TextStyle(
                          color: secondaryGreyColor,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (widget.project.highlights != null) ...[
                        const Text(
                          'Highlights',
                          style: TextStyle(
                            color: accentOrangeColor,
                            fontSize: 14,
                          ),
                        ),
                        ...widget.project.highlights!.map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text('- $e'),
                          ),
                        )
                      ],
                      const SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: [
                          ...widget.project.techStackUsed!.map(
                            (e) => Text(
                              '#${e.name} ',
                              style: const TextStyle(
                                color: accentOrangeColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
