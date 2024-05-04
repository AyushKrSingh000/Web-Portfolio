import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_flutter/src/constants/constants.dart';

import '../../../constants/enums.dart';
import '../../../logic/repositories/theme_repository.dart';
import '../home_page_model.dart';
import '../../widgets/custom_button.dart';
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
    final appTheme =
        ref.watch(themeRepositoryProvider.select((value) => value)) ==
            AppTheme.lightVSCode;
    return projectStatus == ProjectStatus.loaded && projects != null
        ? RawScrollbar(
            controller: _scrollController,
            thickness: 10,
            radius: const Radius.circular(20),
            thumbColor: Colors.white.withOpacity(0.5),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                child: Center(
                  child: Wrap(
                      spacing: 30,
                      runSpacing: 30,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: projects
                          .map(
                            (e) => ProjectCard(
                              data: e,
                              links: techLinks[e.projectName] ?? [],
                            ),
                          )
                          .toList()),
                ),
              ),
            ),
          )
        : projectStatus == ProjectStatus.initial ||
                projectStatus == ProjectStatus.loading
            ? Center(
                child: CircularProgressIndicator(
                  color: appTheme ? Colors.green : Colors.white,
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
