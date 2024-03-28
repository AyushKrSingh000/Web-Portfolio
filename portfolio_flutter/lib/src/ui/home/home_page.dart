// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui_web' as ui2;

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_flutter/src/constants/colors.dart';
import 'package:portfolio_flutter/src/constants/enums.dart';
import 'package:portfolio_flutter/src/logic/repositories/theme_repository.dart';

import 'package:portfolio_flutter/src/ui/home/home_page_model.dart';
import 'package:portfolio_flutter/src/ui/home/main_section/main_section.dart';
import 'package:portfolio_flutter/src/utils/color_utils.dart';

import '../../constants/markdown_data.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/explorer_section.dart';
import 'widgets/side_bar.dart';
import 'widgets/top_bar.dart';

final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  double pixels = 0;
  final dta = ui2.platformViewRegistry;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      final appTheme =
          ref.read(themeRepositoryProvider.select((value) => value));
      if (appTheme == AppTheme.lightVSCode) {
        dta.registerViewFactory(
          'webpage',
          (int viewId) => IFrameElement()
            ..srcdoc = lightModeMarkdown
            ..style.width = "100%"
            ..style.height = "100%"
            ..style.border = 'none',
        );
      } else {
        dta.registerViewFactory(
          'webpage',
          (int viewId) => IFrameElement()
            ..srcdoc = darkModeMarkdown
            ..style.width = "100%"
            ..style.height = "100%"
            ..style.border = 'none',
        );
      }
      ref.listen(themeRepositoryProvider, (previous, next) {
        if (next == AppTheme.lightVSCode) {
          dta.registerViewFactory(
            'webpage',
            (int viewId) => IFrameElement()
              ..srcdoc = lightModeMarkdown
              ..style.width = "100%"
              ..style.height = "100%"
              ..style.border = 'none',
          );
        } else {
          dta.registerViewFactory(
            'webpage',
            (int viewId) => IFrameElement()
              ..srcdoc = darkModeMarkdown
              ..style.width = "100%"
              ..style.height = "100%"
              ..style.border = 'none',
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(homePageProvider, (previous, next) {});
    ref.listen(themeRepositoryProvider, (prev, next) {});

    return SafeArea(
        child: Scaffold(
      key: key,
      drawer: MediaQuery.sizeOf(context).width <= 600
          ? const Drawer(
              width: 200,
              child: ExplorerSection(),
            )
          : null,
      backgroundColor: ColorUtils.getColor(ref, scaffoldColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomTabBar(),
          Expanded(
            child: Row(
              children: [
                const CustomSideBar(),
                if (MediaQuery.sizeOf(context).width > 600)
                  const ExplorerSection(),
                const Expanded(child: MainSection()),
              ],
            ),
          ),
          const CustomBottomBar(),
        ],
      ),
    ));
  }
}
