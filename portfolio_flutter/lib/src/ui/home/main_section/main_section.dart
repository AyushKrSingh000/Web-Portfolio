import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_flutter/src/ui/home/about/about_section.dart';
import 'package:portfolio_flutter/src/ui/home/home/home_section.dart';
import 'package:portfolio_flutter/src/ui/home/home_page_model.dart';
import 'package:portfolio_flutter/src/ui/home/main_section/main_top_bar.dart';

class MainSection extends ConsumerStatefulWidget {
  const MainSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainSectionState();
}

class _MainSectionState extends ConsumerState<MainSection> {
  @override
  Widget build(BuildContext context) {
    final pageId =
        ref.watch(homePageProvider.select((value) => value.selectedPage));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const MainTopBar(),
        Expanded(child: ViewScreen(pageId: pageId)),
      ],
    );
  }
}

class ViewScreen extends ConsumerWidget {
  final String pageId;
  const ViewScreen({super.key, required this.pageId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (pageId == "1") {
      return const HomeSection();
    }
    if (pageId == "2") return const AboutSection();
    return const SizedBox();
  }
}
