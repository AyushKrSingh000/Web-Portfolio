import 'package:auto_route/annotations.dart';
import 'dart:html';
import 'dart:ui_web' as ui2;

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_flutter/src/ui/home/home_page_model.dart';
import 'package:portfolio_flutter/src/ui/home/main_section/main_section.dart';
import '../../constants/colors.dart';
import '../../constants/markdown_data.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/explorer_section.dart';
import 'widgets/side_bar.dart';
import 'widgets/top_bar.dart';
import '../../utils/color_utils.dart';

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

    dta.registerViewFactory(
      'webpage',
      (int viewId) => IFrameElement()
        ..srcdoc = getHtmlString(context)
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none',
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(homePageProvider, (previous, next) {});
    return SafeArea(
        child: Scaffold(
      key: key,
      drawer: MediaQuery.sizeOf(context).width <= 600
          ? const Drawer(
              width: 200,
              child: ExplorerSection(),
            )
          : null,
      backgroundColor: ColorUtils.getColor(context, scaffoldColor),
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
