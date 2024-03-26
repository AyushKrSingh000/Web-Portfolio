import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_flutter/src/constants/colors.dart';
import 'package:portfolio_flutter/src/models/project_data.dart';
import 'package:portfolio_flutter/src/ui/projects/widgets/project_card.dart';
import 'package:portfolio_flutter/src/utils/color_utils.dart';

class ProjectsSection extends ConsumerStatefulWidget {
  const ProjectsSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProjectsSectionState();
}

class _ProjectsSectionState extends ConsumerState<ProjectsSection> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      controller: _scrollController,
      thickness: 10,
      radius: const Radius.circular(20),
      thumbColor: ColorUtils.getColor(context, containerColor).withOpacity(0.5),
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
          child: Center(
            child: Wrap(
              spacing: 30,
              runSpacing: 30,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                ProjectCard(
                  data: ProjectData(
                      projectId: 1,
                      projectName: "Saturnalia",
                      desc:
                          "Welcome to the Saturnalia App! This application allows users to discover upcoming events, view event details including location on a map, register for events, and generate QR codes",
                      imageUrl: "",
                      techStacks: [
                        "firebase",
                        "flutter",
                        "riverpod",
                        'typescript',
                        'material-ui'
                      ],
                      sourceCode: "",
                      liveDemo: "dsfjdbsf"),
                ),
                ProjectCard(
                    data: ProjectData(
                        projectId: 1,
                        projectName: "Saturnalia",
                        desc: "ayush kumar singhdsbgsdf",
                        imageUrl: "",
                        techStacks: ["dsjfbjsdf"],
                        sourceCode: "",
                        liveDemo: "dsfjdbsf")),
                ProjectCard(
                    data: ProjectData(
                        projectId: 1,
                        projectName: "Saturnalia",
                        desc: "ayush kumar singhdsbgsdf",
                        imageUrl: "",
                        techStacks: ["dsjfbjsdf"],
                        sourceCode: "",
                        liveDemo: "dsfjdbsf")),
                ProjectCard(
                    data: ProjectData(
                        projectId: 1,
                        projectName: "Saturnalia",
                        desc: "ayush kumar singhdsbgsdf",
                        imageUrl: "",
                        techStacks: ["dsjfbjsdf"],
                        sourceCode: "",
                        liveDemo: "dsfjdbsf")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
