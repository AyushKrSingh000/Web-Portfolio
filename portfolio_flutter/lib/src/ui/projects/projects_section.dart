import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/colors.dart';
import '../../utils/color_utils.dart';
import '../home/home_page_model.dart';
import '../widgets/custom_button.dart';
import 'widgets/project_card.dart';

class ProjectsSection extends ConsumerStatefulWidget {
  const ProjectsSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProjectsSectionState();
}

class _ProjectsSectionState extends ConsumerState<ProjectsSection> {
  final _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      ref.read(homePageProvider.notifier).fetchProjects();
    });
  }

  @override
  Widget build(BuildContext context) {
    final projectStatus =
        ref.watch(homePageProvider.select((value) => value.projectStatus));
    final projects =
        ref.watch(homePageProvider.select((value) => value.projects));
    return projectStatus == ProjectStatus.loaded && projects != null
        ? RawScrollbar(
            controller: _scrollController,
            thickness: 10,
            radius: const Radius.circular(20),
            thumbColor:
                ColorUtils.getColor(context, containerColor).withOpacity(0.5),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                child: Center(
                  child: Wrap(
                      spacing: 30,
                      runSpacing: 30,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children:
                          projects.map((e) => ProjectCard(data: e)).toList()),
                ),
              ),
            ),
          )
        : projectStatus == ProjectStatus.initial ||
                projectStatus == ProjectStatus.loading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(ref.watch(homePageProvider
                        .select((value) => value.projectErrMsg))),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                        text: 'Try Again',
                        onTap: () {
                          ref.read(homePageProvider.notifier).fetchProjects();
                        },
                        isProcessing: false),
                  ],
                ),
              );
  }
}
